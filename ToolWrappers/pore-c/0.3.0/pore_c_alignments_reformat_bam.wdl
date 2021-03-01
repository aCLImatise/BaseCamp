version 1.0

task PoreCAlignmentsReformatbam {
  input {
    Boolean? input_is_bam
    Boolean? output_is_bam
    Boolean? set_bx_flag
    String input_sam
    String output_sam
  }
  command <<<
    pore_c alignments reformat_bam \
      ~{input_sam} \
      ~{output_sam} \
      ~{if (input_is_bam) then "--input-is-bam" else ""} \
      ~{if (output_is_bam) then "--output-is-bam" else ""} \
      ~{if (set_bx_flag) then "--set-bx-flag" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    input_is_bam: "If piping a BAM from stdin (rather than sam)  [default:\\nFalse]"
    output_is_bam: "If piping a BAM to stdout (rather than sam)  [default:\\nFalse]"
    set_bx_flag: "Set the BX tag to the read name  [default: False]"
    input_sam: ""
    output_sam: ""
  }
  output {
    File out_stdout = stdout()
  }
}