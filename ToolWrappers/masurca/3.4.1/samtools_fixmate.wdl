version 1.0

task SamtoolsFixmate {
  input {
    Boolean? remove_unmapped_reads
    String in_dot_names_rt_dot_bam
    String out_dot_names_rt_dot_bam
  }
  command <<<
    samtools fixmate \
      ~{in_dot_names_rt_dot_bam} \
      ~{out_dot_names_rt_dot_bam} \
      ~{if (remove_unmapped_reads) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_unmapped_reads: "remove unmapped reads and secondary alignments"
    in_dot_names_rt_dot_bam: ""
    out_dot_names_rt_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}