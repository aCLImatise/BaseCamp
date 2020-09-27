version 1.0

task PhyluceUtilitiesUnmixFastaReads {
  input {
    File? out_r_one
    String? mixed_reads
  }
  command <<<
    phyluce_utilities_unmix_fasta_reads \
      ~{if defined(out_r_one) then ("--out-r1 " +  '"' + out_r_one + '"') else ""} \
      ~{if defined(mixed_reads) then ("--mixed-reads " +  '"' + mixed_reads + '"') else ""}
  >>>
  parameter_meta {
    out_r_one: "--out-r-singleton OUT_R_SINGLETON\\n[--verbosity {INFO,WARN,CRITICAL}]\\n[--log-path LOG_PATH] [--new-style]"
    mixed_reads: ""
  }
  output {
    File out_stdout = stdout()
    File out_out_r_one = "${in_out_r_one}"
  }
}