version 1.0

task Aln2fa.pl {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? de_gap
    String input_dot_aln
  }
  command <<<
    aln2fa.pl \
      ~{input_dot_aln} \
      ~{true="--man" false="" man} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--degap" false="" de_gap}
  >>>
  parameter_meta {
    man: "Full documentation"
    verbose: "Verbose"
    de_gap: "Remove gaps from sequences"
    input_dot_aln: ""
  }
}