version 1.0

task ConvertReference {
  input {
    String? name_target_contig
    Boolean? print_more_information
    String? msa_input_contigs
    String? input_sambam_file
    String? output_sambam_file
    Boolean? insert_silent_padding
    Boolean? use_x_m
    Boolean? hardclip_bases_default
  }
  command <<<
    convert_reference \
      ~{if defined(name_target_contig) then ("-t " +  '"' + name_target_contig + '"') else ""} \
      ~{true="-v" false="" print_more_information} \
      ~{if defined(msa_input_contigs) then ("-m " +  '"' + msa_input_contigs + '"') else ""} \
      ~{if defined(input_sambam_file) then ("-i " +  '"' + input_sambam_file + '"') else ""} \
      ~{if defined(output_sambam_file) then ("-o " +  '"' + output_sambam_file + '"') else ""} \
      ~{true="-p" false="" insert_silent_padding} \
      ~{true="-X" false="" use_x_m} \
      ~{true="-H" false="" hardclip_bases_default}
  >>>
  parameter_meta {
    name_target_contig: "Name of target contig"
    print_more_information: "Print more information"
    msa_input_contigs: "MSA input of all contigs aligned"
    input_sambam_file: "Input SAM/BAM file"
    output_sambam_file: "Output SAM/BAM file"
    insert_silent_padding: "Insert silent padding states 'P' in CIGAR"
    use_x_m: "Use X/= instead of M for Match/Mismatch states"
    hardclip_bases_default: "Hard-clip bases instead of the default soft-clipping"
  }
}