version 1.0

task Taxit {
  input {
    String at_call_aside
  }
  command <<<
    taxit \
      ~{at_call_aside}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    at_call_aside: "File \\\"/usr/local/lib/python3.7/site-packages/pkg_resources/__init__.py\\\", line 3225, in _call_aside"
  }
  output {
    File out_stdout = stdout()
  }
}