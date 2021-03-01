version 1.0

task Tophat2gff3 {
  input {
    String description
    Int gff_three
    String this
    String format
    String script
    String conver_sts
    String for
    String the
    String use
    String juc_tions
    String with
    File var_file
    String product_ed
    String by
    String top_hat
  }
  command <<<
    tophat2gff3 \
      ~{description} \
      ~{gff_three} \
      ~{this} \
      ~{format} \
      ~{script} \
      ~{conver_sts} \
      ~{for} \
      ~{the} \
      ~{use} \
      ~{juc_tions} \
      ~{with} \
      ~{var_file} \
      ~{product_ed} \
      ~{by} \
      ~{top_hat}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    description: ""
    gff_three: ""
    this: ""
    format: ""
    script: ""
    conver_sts: ""
    for: ""
    the: ""
    use: ""
    juc_tions: ""
    with: ""
    var_file: ""
    product_ed: ""
    by: ""
    top_hat: ""
  }
  output {
    File out_stdout = stdout()
  }
}