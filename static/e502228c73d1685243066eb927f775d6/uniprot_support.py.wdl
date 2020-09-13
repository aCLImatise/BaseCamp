version 1.0

task UniprotSupportpy {
  command <<<
    uniprot_support_py
  >>>
  output {
    File out_stdout = stdout()
  }
}