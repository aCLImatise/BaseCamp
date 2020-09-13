version 1.0

task ConvertReference {
  input {
    String? name_target_contig
    Boolean? print_more_information
    String? msa_input_contigs
    File? input_sambam_file
    File? output_sambam_file
    Boolean? insert_padding_states
    Boolean? use_x_m
    Boolean? hardclip_bases_softclipping
  }
  command <<<
    convert_reference \
      ~{if defined(name_target_contig) then ("-t " +  '"' + name_target_contig + '"') else ""} \
      ~{if (print_more_information) then "-v" else ""} \
      ~{if defined(msa_input_contigs) then ("-m " +  '"' + msa_input_contigs + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(output_sambam_file) then ("-o " +  '"' + output_sambam_file + '"') else ""} \
      ~{if (insert_padding_states) then "-p" else ""} \
      ~{if (use_x_m) then "-X" else ""} \
      ~{if (hardclip_bases_softclipping) then "-H" else ""}
  >>>
  parameter_meta {
    name_target_contig: "Name of target contig"
    print_more_information: "Print more information"
    msa_input_contigs: "MSA input of all contigs aligned"
    input_sambam_file: "Input SAM/BAM file"
    output_sambam_file: "Output SAM/BAM file"
    insert_padding_states: "Insert silent padding states 'P' in CIGAR"
    use_x_m: "Use X/= instead of M for Match/Mismatch states"
    hardclip_bases_softclipping: "Hard-clip bases instead of the default soft-clipping"
  }
  output {
    File out_stdout = stdout()
    File out_output_sambam_file = "${in_output_sambam_file}"
  }
}