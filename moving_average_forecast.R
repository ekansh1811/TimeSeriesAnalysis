holts_model = HoltWinters(df$Close, gamma = FALSE)
holts_forecast = forecast(holts_model, h = 12)
plot(holts_forecast)