version 1.0

task Scrappy {
  input {
    String at_call_aside
  }
  command <<<
    scrappy \
      ~{at_call_aside}
  >>>
  parameter_meta {
    at_call_aside: "File \\\"/usr/local/lib/python3.7/site-packages/pkg_resources/__init__.py\\\", line 3225, in _call_aside"
  }
  output {
    File out_stdout = stdout()
  }
}