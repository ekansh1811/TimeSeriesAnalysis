returns = df$Close-lag(df$Close)
returns = c(NA, diff(df$Close) / head(df$Close, -1))
returns = returns[2:2730]
plot(returns, type='l')
garch_base = auto.arima(returns)
summary(garch_base)
garch_model_spec = ugarchspec(variance.model=list(model="sGARCH", garchOrder=c(1,1)), mean.model=list(armaOrder=c(3,2)))
garch_model = ugarchfit(spec = garch_model_spec, data = returns)
garch_forecast = ugarchforecast(garch_model, h = 12)
plot(garch_forecast)
garch_model
