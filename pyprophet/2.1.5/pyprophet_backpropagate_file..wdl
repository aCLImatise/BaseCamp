version 1.0

task PyprophetBackpropagateFile {
  input {
    String py_prophet
    String back_propagate
  }
  command <<<
    pyprophet backpropagate file_ \
      ~{py_prophet} \
      ~{back_propagate}
  >>>
  parameter_meta {
    py_prophet: ""
    back_propagate: ""
  }
  output {
    File out_stdout = stdout()
  }
}