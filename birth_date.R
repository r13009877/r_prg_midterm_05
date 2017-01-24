load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
birth_year <- Sys.Date() %>%
  format(format = "%Y") %>%
  as.numeric() %>%
  `-`(straw_hat_df$age)

straw_hat_df$birth_date <- paste(birth_year,straw_hat_df$birthday,sep = "-") %>%
  as.Date()