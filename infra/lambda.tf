resource "aws_lambda_function" "todo_app" {
  function_name = "todo-app"
  role          = aws_iam_role.todo_app_lambda.arn
  package_type  = "Image"
  image_uri     = "${aws_ecr_repository.todo_lambda.repository_url}:latest"
  architectures = ["x86_64"]
  timeout       = 10

  environment {
    variables = {
      TODOS_TABLE_NAME = aws_dynamodb_table.todos.name
    }
  }
}
