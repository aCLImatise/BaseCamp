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
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
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