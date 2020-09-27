version 1.0

task Nosetests27 {
  input {
    String at_call_aside
  }
  command <<<
    nosetests_2_7 \
      ~{at_call_aside}
  >>>
  parameter_meta {
    at_call_aside: "File \\\"/usr/local/lib/python2.7/site-packages/pkg_resources/__init__.py\\\", line 3079, in _call_aside"
  }
  output {
    File out_stdout = stdout()
  }
}