version 1.0

task Abyssbowtie {
  command <<<
    abyss_bowtie
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  output {
    File out_stdout = stdout()
  }
}