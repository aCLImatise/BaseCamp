version 1.0

task Plotbamstats {
  command <<<
    plot_bamstats
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  output {
    File out_stdout = stdout()
  }
}