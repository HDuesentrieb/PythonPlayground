notes4 <- c(261.63, 293.66, 329.63, 349.23, 392.00, 440.00, 493.88, 523.25)
t <- seq(0, 20, by=.001); n <- length(t)
c4 <- sin(2*pi*notes4[1]*t)
e4 <- sin(2*pi*notes4[3]*t)
g4 <- sin(2*pi*notes4[5]*t)
chord <- c4+e4+g4+rnorm(n,0,0.3)
x <- sapply(notes4, function(freq) sin(2*pi*freq*t))
fit <- lm(chord ~x - 1)
plot(fit$coefficients^2, type='h')