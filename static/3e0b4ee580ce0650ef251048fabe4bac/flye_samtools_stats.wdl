version 1.0

task FlyeSamtoolsStats {
  input {
    File? reference
    Int? threads
    String sam_tools
    String stats
    File file_dot_bam
  }
  command <<<
    flye-samtools stats \
      ~{sam_tools} \
      ~{stats} \
      ~{file_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    stats: ""
    file_dot_bam: ""
  }
}