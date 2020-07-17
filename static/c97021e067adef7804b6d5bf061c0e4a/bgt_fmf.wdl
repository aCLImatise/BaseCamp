version 1.0

task BgtFmf {
  input {
    Boolean? load_entire_fmf
    Boolean? only_output_name
    Boolean? mn
    String fmf
    String in_dot_fmf
    String? condition
  }
  command <<<
    bgt fmf \
      ~{fmf} \
      ~{in_dot_fmf} \
      ~{condition} \
      ~{true="-m" false="" load_entire_fmf} \
      ~{true="-n" false="" only_output_name} \
      ~{true="-mn" false="" mn}
  >>>
  parameter_meta {
    load_entire_fmf: "load the entire FMF into RAM"
    only_output_name: "only output the row name (the 1st column)"
    mn: ""
    fmf: ""
    in_dot_fmf: ""
    condition: ""
  }
}