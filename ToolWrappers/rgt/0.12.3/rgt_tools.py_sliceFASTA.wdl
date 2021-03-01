version 1.0

task RgttoolspySliceFASTA {
  input {
    File? input_fasta_file
    Int? length_slice_sequence
    File? output_fasta_file
    String? the_start_position
    Boolean? reverse
  }
  command <<<
    rgt_tools_py sliceFASTA \
      ~{if defined(input_fasta_file) then ("-i " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(length_slice_sequence) then ("-l " +  '"' + length_slice_sequence + '"') else ""} \
      ~{if defined(output_fasta_file) then ("-o " +  '"' + output_fasta_file + '"') else ""} \
      ~{if defined(the_start_position) then ("-p " +  '"' + the_start_position + '"') else ""} \
      ~{if (reverse) then "--reverse" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fasta_file: "Input FASTA file"
    length_slice_sequence: "Length of the slice sequence"
    output_fasta_file: "Output FASTA file"
    the_start_position: "The start position"
    reverse: "Reverse the sequence"
  }
  output {
    File out_stdout = stdout()
    File out_output_fasta_file = "${in_output_fasta_file}"
  }
}