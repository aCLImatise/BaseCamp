version 1.0

task Abyssbwamem {
  command <<<
    abyss_bwamem
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  output {
    File out_stdout = stdout()
  }
}