version 1.0

task Abyssbwasw {
  command <<<
    abyss_bwasw
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  output {
    File out_stdout = stdout()
  }
}