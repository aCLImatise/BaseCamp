version 1.0

task Kaijuexcludedaccessionstxt {
  command <<<
    kaiju_excluded_accessions_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}