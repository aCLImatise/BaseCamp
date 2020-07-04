version 1.0

task Plotflowcell.sh {
  input {
    String in
  }
  command <<<
    plotflowcell.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}