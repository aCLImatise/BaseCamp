version 1.0

task Rpsblast {
  input {
    Boolean? alignment_view_options
  }
  command <<<
    rpsblast \
      ~{true="-m" false="" alignment_view_options}
  >>>
  parameter_meta {
    alignment_view_options: "alignment view options:"
  }
}