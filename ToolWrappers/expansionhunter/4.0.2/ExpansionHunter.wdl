version 1.0

task ExpansionHunter {
  command <<<
    ExpansionHunter
  >>>
  runtime {
    docker: "quay.io/biocontainers/expansionhunter:4.0.2--he785bd8_0"
  }
  output {
    File out_stdout = stdout()
  }
}