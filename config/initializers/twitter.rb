# proxy = {
#   host: '172.31.1.4',
#   port: 8080,
#   username: 'iim2014002',
#   password: 'Anuj9811410760',
# }


$client = Twitter::REST::Client.new do |config|
  # config.consumer_key        = "consumer_key"
  # config.consumer_secret     = "consumer_secret"
  # config.access_token        = "access_token"
  # config.access_token_secret = "access_token_secret"

  config.consumer_key        = "pKzIz2CBmB90823OAY4TfdDnK"
  config.consumer_secret     = "zrg5CG0G9SO1fQm8ISoOiR0BbZzpmCkDw8r6w4bkyhH58rkV3t"
  config.access_token        = "3785264952-eZjCJfJvqoQFJHrNw4rr0jJTuRaaAxVSLiZkgLq"
  config.access_token_secret = "dlsIzew6Fg0bPnG54aLzsNNcNY3rvkvcozwnX1nDuI9Vo"
  # config.proxy 				 = proxy
end