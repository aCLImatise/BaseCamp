version 1.0

task BpMakeMrnaProteinpl {
  input {
    Boolean? f_slash_frame
    Boolean? t_slash_terminator
    Boolean? us_lash_unknown
    Boolean? ct_slash_codon_table
    Boolean? cds_slash_full_cds
    Boolean? throw_on_error
    Boolean? if_slash_i_format
    Boolean? of_slash_o_format
    File? oslash_output
    Boolean? i_slash_input
  }
  command <<<
    bp_make_mrna_protein_pl \
      ~{if (f_slash_frame) then "-f/--frame" else ""} \
      ~{if (t_slash_terminator) then "-t/--terminator" else ""} \
      ~{if (us_lash_unknown) then "-u/--unknown" else ""} \
      ~{if (ct_slash_codon_table) then "-ct/--codontable" else ""} \
      ~{if (cds_slash_full_cds) then "-cds/--fullcds" else ""} \
      ~{if (throw_on_error) then "-throwOnError" else ""} \
      ~{if (if_slash_i_format) then "-if/--iformat" else ""} \
      ~{if (of_slash_o_format) then "-of/--oformat" else ""} \
      ~{if (oslash_output) then "-o/--output" else ""} \
      ~{if (i_slash_input) then "-i/--input" else ""}
  >>>
  parameter_meta {
    f_slash_frame: "Translation Frame (0,1,2) are valid (defaults to '0')"
    t_slash_terminator: "Stop Codon Character ('*' by default)"
    us_lash_unknown: "Unknown Protein character (defaults to 'X')"
    ct_slash_codon_table: "Codon table to use (defaults to '1')\\n(see Bio::PrimarySeq for more information)"
    cds_slash_full_cds: "Expected Full CDS (with start and Stop codon)"
    throw_on_error: "Throw an error if no Full CDS (defaults to 0)"
    if_slash_i_format: "Input format (defaults to FASTA/Pearson)"
    of_slash_o_format: "Output format (defaults to FASTA/Pearson)"
    oslash_output: "Output Filename (defaults to STDOUT)"
    i_slash_input: "Input Filename (defaults to STDIN)"
  }
  output {
    File out_stdout = stdout()
    File out_oslash_output = "${in_oslash_output}"
  }
}