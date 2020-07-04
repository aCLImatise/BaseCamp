version 1.0

task Blastpgp {
  input {
    Boolean? alignment_view_options
    Boolean? use_composition_based
    Boolean? asn_scoremat_input
    Boolean? asn_scoremat_output
  }
  command <<<
    blastpgp \
      ~{true="-m" false="" alignment_view_options} \
      ~{true="-t" false="" use_composition_based} \
      ~{true="-q" false="" asn_scoremat_input} \
      ~{true="-u" false="" asn_scoremat_output}
  >>>
  parameter_meta {
    alignment_view_options: "alignment view options:"
    use_composition_based: "Use composition based score adjustment"
    asn_scoremat_input: "ASN.1 Scoremat input of checkpoint data:"
    asn_scoremat_output: "ASN.1 Scoremat output of checkpoint data:"
  }
}