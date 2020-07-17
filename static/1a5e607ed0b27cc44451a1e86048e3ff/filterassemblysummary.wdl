version 1.0

task Filterassemblysummary.sh {
  input {
    String in
  }
  command <<<
    filterassemblysummary.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}