version 1.0

task Maker2evalGtf {
  input {
    String this
    String evaluating
    String for
    Int maker_two_eval
    String program_dot
    String script
    String the
    String converts
    String program
    String eval
    String maker
    Int gff_three
    String files
    String into
    String gtf
    String formated
  }
  command <<<
    maker2eval_gtf \
      ~{this} \
      ~{evaluating} \
      ~{for} \
      ~{maker_two_eval} \
      ~{program_dot} \
      ~{script} \
      ~{the} \
      ~{converts} \
      ~{program} \
      ~{eval} \
      ~{maker} \
      ~{gff_three} \
      ~{files} \
      ~{into} \
      ~{gtf} \
      ~{formated}
  >>>
  parameter_meta {
    this: ""
    evaluating: ""
    for: ""
    maker_two_eval: ""
    program_dot: ""
    script: ""
    the: ""
    converts: ""
    program: ""
    eval: ""
    maker: ""
    gff_three: ""
    files: ""
    into: ""
    gtf: ""
    formated: ""
  }
  output {
    File out_stdout = stdout()
  }
}