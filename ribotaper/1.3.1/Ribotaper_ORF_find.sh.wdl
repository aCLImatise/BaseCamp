version 1.0

task RibotaperORFFindsh {
  command <<<
    Ribotaper_ORF_find_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}