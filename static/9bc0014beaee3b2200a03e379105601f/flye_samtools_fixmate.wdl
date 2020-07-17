version 1.0

task FlyeSamtoolsFixmate {
  input {
    File? reference
    Int? threads
    String sam_tools
    String fix_mate
    String in_dot_names_rt_dot_bam
    String out_dot_names_rt_dot_bam
  }
  command <<<
    flye-samtools fixmate \
      ~{sam_tools} \
      ~{fix_mate} \
      ~{in_dot_names_rt_dot_bam} \
      ~{out_dot_names_rt_dot_bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    fix_mate: ""
    in_dot_names_rt_dot_bam: ""
    out_dot_names_rt_dot_bam: ""
  }
}