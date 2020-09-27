version 1.0

task Wtmer {
  input {
    File? long_reads_file
    File? output_file_kmerfrequency
    Boolean? force_overwrite
    Boolean? disable_homopolymer_compression
  }
  command <<<
    wtmer \
      ~{if defined(long_reads_file) then ("-i " +  '"' + long_reads_file + '"') else ""} \
      ~{if defined(output_file_kmerfrequency) then ("-o " +  '"' + output_file_kmerfrequency + '"') else ""} \
      ~{if (force_overwrite) then "-f" else ""} \
      ~{if (disable_homopolymer_compression) then "-H" else ""}
  >>>
  parameter_meta {
    long_reads_file: "Long reads sequences file, + *"
    output_file_kmerfrequency: "Output file of kmer_frequency, *"
    force_overwrite: "Force overwrite"
    disable_homopolymer_compression: "Disable homopolymer compression"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_kmerfrequency = "${in_output_file_kmerfrequency}"
  }
}