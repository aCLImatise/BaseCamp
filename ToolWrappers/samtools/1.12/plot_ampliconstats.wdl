version 1.0

task Plotampliconstats {
  command <<<
    plot_ampliconstats
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.12--hd5e65b6_0"
  }
  output {
    File out_stdout = stdout()
  }
}