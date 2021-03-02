version 1.0

task Cegma2zff {
  input {
    String this
    String ce_gma_gff
    String for
    String script
    String use
    String converts
    String in
    String snap
    String the
    String var_9
    String training_dot
    String gff
    String var_12
    File var_file
    String files
    String are
    String from
    String ce_gma
    String always
    String genome_dot_ann
    String into
    String z_ff
  }
  command <<<
    cegma2zff \
      ~{this} \
      ~{ce_gma_gff} \
      ~{for} \
      ~{script} \
      ~{use} \
      ~{converts} \
      ~{in} \
      ~{snap} \
      ~{the} \
      ~{var_9} \
      ~{training_dot} \
      ~{gff} \
      ~{var_12} \
      ~{var_file} \
      ~{files} \
      ~{are} \
      ~{from} \
      ~{ce_gma} \
      ~{always} \
      ~{genome_dot_ann} \
      ~{into} \
      ~{z_ff}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    this: ""
    ce_gma_gff: ""
    for: ""
    script: ""
    use: ""
    converts: ""
    in: ""
    snap: ""
    the: ""
    var_9: ""
    training_dot: ""
    gff: ""
    var_12: ""
    var_file: ""
    files: ""
    are: ""
    from: ""
    ce_gma: ""
    always: ""
    genome_dot_ann: ""
    into: ""
    z_ff: ""
  }
  output {
    File out_stdout = stdout()
  }
}