version 1.0

task Abyssbwamem {
  command <<<
    abyss_bwamem
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0"
  }
  output {
    File out_stdout = stdout()
  }
}