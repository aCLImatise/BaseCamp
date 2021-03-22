version 1.0

task Bamstreamingmarkduplicates {
  command <<<
    bamstreamingmarkduplicates
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobambam:2.0.179--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}