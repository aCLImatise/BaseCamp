version 1.0

task Spadesconvertbintofasta {
  input {
    File? prefix
    File? info_file
    File? output_file
  }
  command <<<
    spades_convert_bin_to_fasta \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(info_file) then ("--info_file " +  '"' + info_file + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "Prefix of .off and .seq file for contigs in binary format"
    info_file: "Path to info file for contigs in binary format"
    output_file: "Output file name"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}