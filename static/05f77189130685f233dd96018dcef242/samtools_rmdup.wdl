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
      ~{true="-s" false="" rmdup_se_reads} \
      ~{true="-S" false="" treat_pe_reads} \
      ~{true="-sS" false="" ss}
  >>>
  parameter_meta {
    rmdup_se_reads: "rmdup for SE reads"
    treat_pe_reads: "treat PE reads as SE in rmdup (force -s)"
    ss: ""
    input_dots_rt_dot_bam: ""
    output_dot_bam: ""
  }
}