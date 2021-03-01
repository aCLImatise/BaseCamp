version 1.0

task RsatCalctaxfreq {
  input {
    String calc_tax_freq
  }
  command <<<
    rsat calc_taxfreq \
      ~{calc_tax_freq}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    calc_tax_freq: "[1mDESCRIPTION[0m"
  }
  output {
    File out_stdout = stdout()
  }
}