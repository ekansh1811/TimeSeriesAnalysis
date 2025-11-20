yf = import("yfinance")
ticker = yf$Ticker("AAPL")
df = ticker$history(period = "7d", interval = "1m")
plot(df$Close, type = "l")
acf(df$Close, lag.max = 2730)
pacf(df$Close, lag.max = 2730)
data = df$Close[1:2720]
val = df$Close[2721:2730]
adf.test(df$Close)
kpss.test(df$Close)
pp.test(df$Close)