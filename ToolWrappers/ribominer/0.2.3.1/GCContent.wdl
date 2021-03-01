version 1.0

task GCContent {
  input {
    File? input_files_fasta
    String? ot_put_prefix
    String? mode
  }
  command <<<
    GCContent \
      ~{if defined(input_files_fasta) then ("--input " +  '"' + input_files_fasta + '"') else ""} \
      ~{if defined(ot_put_prefix) then ("--otput_prefix " +  '"' + ot_put_prefix + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_files_fasta: "Input file(s) in fasta format."
    ot_put_prefix: "Prefix of output files.[required]"
    mode: "The type of GC content you want to statistic. Either\\nthe normal type or GC content from each reading frame.\\n[normal or frames]. defaul=normal\\n"
  }
  output {
    File out_stdout = stdout()
  }
}