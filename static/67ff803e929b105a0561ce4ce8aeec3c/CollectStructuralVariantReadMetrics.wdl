version 1.0

task CollectStructuralVariantReadMetrics {
  command <<<
    CollectStructuralVariantReadMetrics
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.10.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}