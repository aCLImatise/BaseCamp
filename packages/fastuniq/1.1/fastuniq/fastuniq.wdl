version 1.0

task Fastuniq {
  input {
    Boolean? input_file_list
    File? output_sequence_format
    File? first_output_file
    File? second_output_file
    Boolean? types_sequence_descriptions
  }
  command <<<
    fastuniq \
      ~{if (input_file_list) then "-i" else ""} \
      ~{if (output_sequence_format) then "-t" else ""} \
      ~{if (first_output_file) then "-o" else ""} \
      ~{if (second_output_file) then "-p" else ""} \
      ~{if (types_sequence_descriptions) then "-c" else ""}
  >>>
  parameter_meta {
    input_file_list: ": The input file list of paired FSATQ sequence files [FILE IN]\\nMaximum 1000 pairs"
    output_sequence_format: ": Output sequence format [q/f/p]\\nq : FASTQ format into TWO output files\\nf : FASTA format into TWO output files\\np : FASTA format into ONE output file\\ndefault = q"
    first_output_file: ": The first output file [FILE OUT]"
    second_output_file: ": The second output file [FILE OUT]\\nOptional. ONLY required when output sequence format(-t) is specify as\\n[q] or [f]."
    types_sequence_descriptions: ": Types of sequence descriptions for output [0/1]\\n0 : The raw descriptions\\n1 : New serial numbers assigned by FastUniq\\ndefault = 0"
  }
  output {
    File out_stdout = stdout()
    File out_output_sequence_format = "${in_output_sequence_format}"
    File out_first_output_file = "${in_first_output_file}"
    File out_second_output_file = "${in_second_output_file}"
  }
}