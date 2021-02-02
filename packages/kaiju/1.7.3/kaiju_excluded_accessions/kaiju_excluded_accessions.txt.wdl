version 1.0

task Kaijuexcludedaccessionstxt {
  command <<<
    kaiju_excluded_accessions_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}