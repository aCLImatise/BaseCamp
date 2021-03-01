version 1.0

task BpMakeMrnaProteinpl {
  input {
    Boolean? frame
    Boolean? terminator
    Boolean? unknown
    Boolean? codon_table
    Boolean? full_cds
    Boolean? throw_on_error
    Boolean? i_format
    Boolean? o_format
    File? output_filename_defaults
    Boolean? input_filename_defaults
  }
  command <<<
    bp_make_mrna_protein_pl \
      ~{if (frame) then "--frame" else ""} \
      ~{if (terminator) then "--terminator" else ""} \
      ~{if (unknown) then "--unknown" else ""} \
      ~{if (codon_table) then "--codontable" else ""} \
      ~{if (full_cds) then "--fullcds" else ""} \
      ~{if (throw_on_error) then "-throwOnError" else ""} \
      ~{if (i_format) then "--iformat" else ""} \
      ~{if (o_format) then "--oformat" else ""} \
      ~{if (output_filename_defaults) then "--output" else ""} \
      ~{if (input_filename_defaults) then "--input" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    frame: "Translation Frame (0,1,2) are valid (defaults to '0')"
    terminator: "Stop Codon Character ('*' by default)"
    unknown: "Unknown Protein character (defaults to 'X')"
    codon_table: "Codon table to use (defaults to '1')\\n(see Bio::PrimarySeq for more information)"
    full_cds: "Expected Full CDS (with start and Stop codon)"
    throw_on_error: "Throw an error if no Full CDS (defaults to 0)"
    i_format: "Input format (defaults to FASTA/Pearson)"
    o_format: "Output format (defaults to FASTA/Pearson)"
    output_filename_defaults: "Output Filename (defaults to STDOUT)"
    input_filename_defaults: "Input Filename (defaults to STDIN)"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_defaults = "${in_output_filename_defaults}"
  }
}