version 1.0

task SpadesConvertBinToFasta {
  input {
    File? prefix
    File? info_file
    File? output_file
  }
  command <<<
    spades-convert-bin-to-fasta \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(info_file) then ("--info_file " +  '"' + info_file + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Prefix of .off and .seq file for contigs in binary format"
    info_file: "Path to info file for contigs in binary format"
    output_file: "Output file name"
  }
}