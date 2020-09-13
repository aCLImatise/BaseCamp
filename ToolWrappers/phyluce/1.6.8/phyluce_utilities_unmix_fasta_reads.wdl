version 1.0

task PhyluceUtilitiesUnmixFastaReads {
  input {
    Int? out_r_one
    String? out_r_singleton
    File? mixed_reads
    File? singleton_reads
    String? verbosity
    File? log_path
    Boolean? new_style
  }
  command <<<
    phyluce_utilities_unmix_fasta_reads \
      ~{if defined(out_r_one) then ("--out-r1 " +  '"' + out_r_one + '"') else ""} \
      ~{if defined(out_r_singleton) then ("--out-r-singleton " +  '"' + out_r_singleton + '"') else ""} \
      ~{if defined(mixed_reads) then ("--mixed-reads " +  '"' + mixed_reads + '"') else ""} \
      ~{if defined(singleton_reads) then ("--singleton-reads " +  '"' + singleton_reads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if (new_style) then "--new-style" else ""}
  >>>
  parameter_meta {
    out_r_one: ""
    out_r_singleton: ""
    mixed_reads: "The file containing mixed fasta reads with  and \\ndesignators for reads."
    singleton_reads: "The file containing singleton fasta reads."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    new_style: ""
  }
  output {
    File out_stdout = stdout()
  }
}