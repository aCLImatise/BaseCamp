version 1.0

task FaFrag {
  input {
    Boolean? mixed
    String in_dot_fa
    String start
    String end
    String out_dot_fa
  }
  command <<<
    faFrag \
      ~{in_dot_fa} \
      ~{start} \
      ~{end} \
      ~{out_dot_fa} \
      ~{true="-mixed" false="" mixed}
  >>>
  parameter_meta {
    mixed: "- preserve mixed-case in FASTA file"
    in_dot_fa: ""
    start: ""
    end: ""
    out_dot_fa: ""
  }
}