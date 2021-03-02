version 1.0

task PhyluceUtilitiesUnmixFastaReads {
  input {
    File? mixed_reads
    File? singleton_reads
    Int? out_r_one
    Int? out_r_two
    String? out_r_singleton
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_utilities_unmix_fasta_reads \
      ~{if defined(mixed_reads) then ("--mixed-reads " +  '"' + mixed_reads + '"') else ""} \
      ~{if defined(singleton_reads) then ("--singleton-reads " +  '"' + singleton_reads + '"') else ""} \
      ~{if defined(out_r_one) then ("--out-r1 " +  '"' + out_r_one + '"') else ""} \
      ~{if defined(out_r_two) then ("--out-r2 " +  '"' + out_r_two + '"') else ""} \
      ~{if defined(out_r_singleton) then ("--out-r-singleton " +  '"' + out_r_singleton + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mixed_reads: "The file containing mixed fasta reads with  and \\ndesignators for reads."
    singleton_reads: "The file containing singleton fasta reads."
    out_r_one: "The output fasta for R1."
    out_r_two: "The output fasta for R2."
    out_r_singleton: "The output fasta for singleton reads (RS)."
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
  }
}