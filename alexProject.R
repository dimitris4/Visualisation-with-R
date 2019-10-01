library(ggplot2)
library(scales)

df <- readODS::read_ods("alexandros.ods")
g1 <- ggplot(df, aes(x = df$date, y = df$`Anti-A`)) + 
      geom_line() + 
      scale_y_continuous(name = "Anti-A Antibody Titer", trans = log2_trans(),  breaks = trans_breaks("log2", function(x) 2^x)) 
      ggtitle("Title") +
      scale_x_continuous(name = NULL, breaks = seq(0,2250, by=360))
plot(g1)

