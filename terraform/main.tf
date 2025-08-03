provider "aws" {
  region = "us-east-1"
}

resource "aws_lambda_function" "firouzi_codex" {
  filename         = "deployment/aws_lambda/handler.zip"
  function_name    = "firouzi_codex_handler"
  role             = aws_iam_role.lambda_exec.arn
  handler          = "handler.lambda_handler"
  runtime          = "python3.9"
  source_code_hash = filebase64sha256("deployment/aws_lambda/handler.zip")
}
