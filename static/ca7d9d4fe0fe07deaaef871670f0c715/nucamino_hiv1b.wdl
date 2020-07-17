version 1.0

task NucaminoHiv1b {
  input {
    Boolean? quiet
    Boolean? gene
    String? in_del_codon_opening_bonus
    String? in_del_codon_extension_bonus
    String? stop_codon_penalty
    String? gap_opening_penalty
    String? gap_extension_penalty
    String? go_routines
    String? output_format
    String? fasta_file_contains
    String? output_destination_alignment
    Boolean? ppr_of
    String? hiv_one_b_options
  }
  command <<<
    nucamino hiv1b \
      ~{hiv_one_b_options} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--gene" false="" gene} \
      ~{if defined(in_del_codon_opening_bonus) then ("--indel-codon-opening-bonus " +  '"' + in_del_codon_opening_bonus + '"') else ""} \
      ~{if defined(in_del_codon_extension_bonus) then ("--indel-codon-extension-bonus " +  '"' + in_del_codon_extension_bonus + '"') else ""} \
      ~{if defined(stop_codon_penalty) then ("--stop-codon-penalty " +  '"' + stop_codon_penalty + '"') else ""} \
      ~{if defined(gap_opening_penalty) then ("--gap-opening-penalty " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--gap-extension-penalty " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(go_routines) then ("--goroutines " +  '"' + go_routines + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(fasta_file_contains) then ("--input " +  '"' + fasta_file_contains + '"') else ""} \
      ~{if defined(output_destination_alignment) then ("--output " +  '"' + output_destination_alignment + '"') else ""} \
      ~{true="--pprof" false="" ppr_of}
  >>>
  parameter_meta {
    quiet: "hide non-error information output"
    gene: "=[GAG|POL|GP41]                      gene(s) the input sequences should be aligned with"
    in_del_codon_opening_bonus: "bonus score when a indel codon was opened (default: 0)"
    in_del_codon_extension_bonus: "bonus score when a indel codon was extended (default: 2)"
    stop_codon_penalty: "penalty score when a stop codon was met (default: 4)"
    gap_opening_penalty: "penalty score when a gap was opened (default: 10)"
    gap_extension_penalty: "penalty score when a gap was extended (default: 2)"
    go_routines: "number of goroutines the alignment will use. Use the core number when equals to 0 (default: 0)"
    output_format: "[tsv|json]    output format of the alignment result (default: tsv)"
    fasta_file_contains: "FASTA file contains one or more DNA sequences (default: -)"
    output_destination_alignment: "output destination of the alignment results (default: -)"
    ppr_of: "output pprof benchmark result"
    hiv_one_b_options: ""
  }
}