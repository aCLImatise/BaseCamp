version 1.0

task PyfastxStatFastx {
  input {
    String py_fast_x
    String var_command
  }
  command <<<
    pyfastx stat fastx \
      ~{py_fast_x} \
      ~{var_command}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyfastx:0.8.2--py36h955c1b8_0"
  }
  parameter_meta {
    py_fast_x: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}