version 1.0

task Cufflinks2gff3 {
  input {
    String this
    String default
    String into
    String pseudogenes_dot
    Int gff_three
    String ouput
    String a
    String can
    String models
    String script
    String strand_less
    String converts
    String features
    String format
    String will
    String be
    String for
    String the
    String which
    String stdout
    String correspond
    String cufflinks
    String ignored_dot
    String repetative
    String use
    String elements
    String in
    String var_output
    String so
    String to
    String maker
    String is
    String single
    String transcripts_dot_gtf
    String you
    String because
    String via
    String need
    String pass_through_dot
  }
  command <<<
    cufflinks2gff3 \
      ~{this} \
      ~{default} \
      ~{into} \
      ~{pseudogenes_dot} \
      ~{gff_three} \
      ~{ouput} \
      ~{a} \
      ~{can} \
      ~{models} \
      ~{script} \
      ~{strand_less} \
      ~{converts} \
      ~{features} \
      ~{format} \
      ~{will} \
      ~{be} \
      ~{for} \
      ~{the} \
      ~{which} \
      ~{stdout} \
      ~{correspond} \
      ~{cufflinks} \
      ~{ignored_dot} \
      ~{repetative} \
      ~{use} \
      ~{elements} \
      ~{in} \
      ~{var_output} \
      ~{so} \
      ~{to} \
      ~{maker} \
      ~{is} \
      ~{single} \
      ~{transcripts_dot_gtf} \
      ~{you} \
      ~{because} \
      ~{via} \
      ~{need} \
      ~{pass_through_dot}
  >>>
  parameter_meta {
    this: ""
    default: ""
    into: ""
    pseudogenes_dot: ""
    gff_three: ""
    ouput: ""
    a: ""
    can: ""
    models: ""
    script: ""
    strand_less: ""
    converts: ""
    features: ""
    format: ""
    will: ""
    be: ""
    for: ""
    the: ""
    which: ""
    stdout: ""
    correspond: ""
    cufflinks: ""
    ignored_dot: ""
    repetative: ""
    use: ""
    elements: ""
    in: ""
    var_output: ""
    so: ""
    to: ""
    maker: ""
    is: ""
    single: ""
    transcripts_dot_gtf: ""
    you: ""
    because: ""
    via: ""
    need: ""
    pass_through_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}