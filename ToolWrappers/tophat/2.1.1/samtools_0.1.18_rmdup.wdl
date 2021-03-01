version 1.0

task Samtools0118Rmdup {
  input {
    Boolean? rmdup_se_reads
    Boolean? treat_pe_reads
    Boolean? ss
    String sam_tools
    String rmd_up
    String input_dots_rt_dot_bam
    String output_dot_bam
  }
  command <<<
    samtools_0_1_18 rmdup \
      ~{sam_tools} \
      ~{rmd_up} \
      ~{input_dots_rt_dot_bam} \
      ~{output_dot_bam} \
      ~{if (rmdup_se_reads) then "-s" else ""} \
      ~{if (treat_pe_reads) then "-S" else ""} \
      ~{if (ss) then "-sS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rmdup_se_reads: "rmdup for SE reads"
    treat_pe_reads: "treat PE reads as SE in rmdup (force -s)"
    ss: ""
    sam_tools: ""
    rmd_up: ""
    input_dots_rt_dot_bam: ""
    output_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}