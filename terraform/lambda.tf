resource "aws_lambda_function" "get-players-lambda" {
  filename = "../getPlayers/target/scala-2.12/getPlayers.jar"
  role = "${aws_iam_role.lambda_iam_role.arn}"
  function_name = "nhl-stats-grabber-getPlayers"
  runtime = "java8"
  handler = "Handler"
  source_code_hash = "${base64sha256(file("../getPlayers/target/scala-2.12/getPlayers.jar"))}"
  timeout = 60
}

resource "aws_lambda_function" "get-player-stats-lambda" {
  filename = "../getPlayerStats/target/scala-2.12/getPlayerStats.jar"
  role = "${aws_iam_role.lambda_iam_role.arn}"
  function_name = "nhl-stats-grabber-getPlayerStats"
  runtime = "java8"
  handler = "Handler"
  source_code_hash = "${base64sha256(file("../getPlayerStats/target/scala-2.12/getPlayerStats.jar"))}"
  timeout = 60
}
