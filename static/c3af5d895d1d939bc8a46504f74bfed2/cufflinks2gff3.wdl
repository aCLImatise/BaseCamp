version 1.0

task Cufflinks2gff3 {
  input {
    String this
    String script
    String converts
    String the
    String cufflinks
    String var_output
    String transcripts_dot_gtf
    File file
  }
  command <<<
    cufflinks2gff3 \
      ~{this} \
      ~{script} \
      ~{converts} \
      ~{the} \
      ~{cufflinks} \
      ~{var_output} \
      ~{transcripts_dot_gtf} \
      ~{file}
  >>>
  parameter_meta {
    this: ""
    script: ""
    converts: ""
    the: ""
    cufflinks: ""
    var_output: ""
    transcripts_dot_gtf: ""
    file: ""
  }
}