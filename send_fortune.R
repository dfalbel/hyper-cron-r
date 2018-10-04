library(telegram)
library(fortunes)

main <- function() {
  bot <- TGBot$new(token = bot_token('RBot'))
  bot$set_default_chat_id(user_id('me'))
  bot$sendMessage(fortune())
}

main()