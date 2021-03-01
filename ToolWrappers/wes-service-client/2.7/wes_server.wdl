version 1.0

task Wesserver {
  input {
    String at_call_aside
  }
  command <<<
    wes_server \
      ~{at_call_aside}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    at_call_aside: "File \\\"/usr/local/lib/python2.7/site-packages/pkg_resources/__init__.py\\\", line 3082, in _call_aside"
  }
  output {
    File out_stdout = stdout()
  }
}