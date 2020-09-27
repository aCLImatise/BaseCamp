version 1.0

task Callprogram {
  input {
    String at_call_aside
  }
  command <<<
    call_program \
      ~{at_call_aside}
  >>>
  parameter_meta {
    at_call_aside: "File \\\"/usr/local/lib/python3.6/site-packages/pkg_resources/__init__.py\\\", line 3110, in _call_aside"
  }
  output {
    File out_stdout = stdout()
  }
}