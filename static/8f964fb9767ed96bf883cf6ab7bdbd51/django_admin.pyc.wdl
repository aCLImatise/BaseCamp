version 1.0

task Djangoadminpyc {
  command <<<
    django_admin_pyc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}