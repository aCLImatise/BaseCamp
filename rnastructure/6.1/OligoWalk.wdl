version 1.0

task OligoWalk {
  input {
    Boolean? _micromolar
    String sequence_file
    String report_file
  }
  command <<<
    OligoWalk \
      ~{sequence_file} \
      ~{report_file} \
      ~{true="-6" false="" _micromolar}
  >>>
  parameter_meta {
    _micromolar: "(1.5 micromolar)."
    sequence_file: ""
    report_file: ""
  }
}