version 1.0

task PoppunkPickleFixpy {
  input {
    String pickle_fix
    String pickle
    String var_output
  }
  command <<<
    poppunk_pickle_fix_py \
      ~{pickle_fix} \
      ~{pickle} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.3.0--py_0"
  }
  parameter_meta {
    pickle_fix: ""
    pickle: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}