version 1.0

task SamtoolsRmdup {
  input {
    Boolean? rmdup_se_reads
    Boolean? treat_pe_reads
    Boolean? ss
    String input_dots_rt_dot_bam
    String output_dot_bam
  }
  command <<<
    samtools rmdup \
      ~{input_dots_rt_dot_bam} \
      ~{output_dot_bam} \
      ~{if (rmdup_se_reads) then "-s" else ""} \
      ~{if (treat_pe_reads) then "-S" else ""} \
      ~{if (ss) then "-sS" else ""}
  >>>
  parameter_meta {
    rmdup_se_reads: "rmdup for SE reads"
    treat_pe_reads: "treat PE reads as SE in rmdup (force -s)"
    ss: ""
    input_dots_rt_dot_bam: ""
    output_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}