version 1.0

task RestclientGetputpostdelete {
  input {
    String url_vertical_line_name
    String? username
    String? password
  }
  command <<<
    restclient get_put_post_delete \
      ~{url_vertical_line_name} \
      ~{username} \
      ~{password}
  >>>
  parameter_meta {
    url_vertical_line_name: ""
    username: ""
    password: ""
  }
  output {
    File out_stdout = stdout()
  }
}