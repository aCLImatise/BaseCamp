version 1.0

task Megablast {
  input {
    Boolean? alignment_view_options
    Boolean? type_of_output
  }
  command <<<
    megablast \
      ~{true="-m" false="" alignment_view_options} \
      ~{true="-D" false="" type_of_output}
  >>>
  parameter_meta {
    alignment_view_options: "alignment view options:"
    type_of_output: "Type of output:"
  }
}