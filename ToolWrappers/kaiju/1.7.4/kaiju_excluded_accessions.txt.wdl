version 1.0

task Kaijuexcludedaccessionstxt {
  command <<<
    kaiju_excluded_accessions_txt
  >>>
  runtime {
    docker: "quay.io/biocontainers/kaiju:1.7.4--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}