version 1.0

task GenemarkGtf2gff3 {
  input {
    String var_0
    String this
    String redirect
    String converts
    String var_output
    String script
    String genemark
    String into
    String prints
    String a
    String to
    String stdout_dot
    String use
    String var_13
  }
  command <<<
    genemark_gtf2gff3 \
      ~{var_0} \
      ~{this} \
      ~{redirect} \
      ~{converts} \
      ~{var_output} \
      ~{script} \
      ~{genemark} \
      ~{into} \
      ~{prints} \
      ~{a} \
      ~{to} \
      ~{stdout_dot} \
      ~{use} \
      ~{var_13}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    var_0: ""
    this: ""
    redirect: ""
    converts: ""
    var_output: ""
    script: ""
    genemark: ""
    into: ""
    prints: ""
    a: ""
    to: ""
    stdout_dot: ""
    use: ""
    var_13: ""
  }
  output {
    File out_stdout = stdout()
  }
}