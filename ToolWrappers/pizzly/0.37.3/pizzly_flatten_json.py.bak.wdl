version 1.0

task PizzlyFlattenJsonpybak {
  command <<<
    pizzly_flatten_json_py_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}