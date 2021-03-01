version 1.0

task Scancelrange {
  input {
    String at_call_aside
  }
  command <<<
    scancel_range \
      ~{at_call_aside}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    at_call_aside: "File \\\"/usr/local/lib/python3.6/site-packages/pkg_resources/__init__.py\\\", line 3110, in _call_aside"
  }
  output {
    File out_stdout = stdout()
  }
}