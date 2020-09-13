version 1.0

task AlleyoopDedup {
  input {
    Directory? output_dir
    Int? tc_mutations
    Int? threads
  }
  command <<<
    alleyoop dedup \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(tc_mutations) then ("--tcMutations " +  '"' + tc_mutations + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    tc_mutations: "Only select reads with x number of T>C mutations.\\n(default: 0)"
    threads: "Thread number (default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}