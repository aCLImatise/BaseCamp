version 1.0

task RestclientUsername {
  input {
    String rest_client
    String? get_vertical_line_put_vertical_line_post_vertical_line_delete
    String url_vertical_line_name
    String? username
    String? password
  }
  command <<<
    restclient username \
      ~{rest_client} \
      ~{get_vertical_line_put_vertical_line_post_vertical_line_delete} \
      ~{url_vertical_line_name} \
      ~{username} \
      ~{password}
  >>>
  parameter_meta {
    rest_client: ""
    get_vertical_line_put_vertical_line_post_vertical_line_delete: ""
    url_vertical_line_name: ""
    username: ""
    password: ""
  }
  output {
    File out_stdout = stdout()
  }
}