version 1.0

task SequanaBamSplitter {
  input {
    String this
    String bam_slash_sam_slash_cram
    String filter
    String removes
    String unmapped
    String and
    String secondary
  }
  command <<<
    sequana_bam_splitter \
      ~{this} \
      ~{bam_slash_sam_slash_cram} \
      ~{filter} \
      ~{removes} \
      ~{unmapped} \
      ~{and} \
      ~{secondary}
  >>>
  parameter_meta {
    this: ""
    bam_slash_sam_slash_cram: ""
    filter: ""
    removes: ""
    unmapped: ""
    and: ""
    secondary: ""
  }
  output {
    File out_stdout = stdout()
  }
}