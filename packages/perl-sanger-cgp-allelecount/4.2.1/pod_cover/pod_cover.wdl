version 1.0

task PodCover {
  command <<<
    pod_cover
  >>>
  runtime {
    docker: "quay.io/biocontainers/perl-sanger-cgp-allelecount:4.2.1--pl526h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}