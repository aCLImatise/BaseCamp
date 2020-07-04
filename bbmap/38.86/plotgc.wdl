version 1.0

task Plotgc.sh {
  input {
    String in
  }
  command <<<
    plotgc.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}