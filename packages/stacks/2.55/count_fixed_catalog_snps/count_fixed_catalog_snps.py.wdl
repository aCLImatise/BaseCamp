version 1.0

task CountFixedCatalogSnpspy {
  command <<<
    count_fixed_catalog_snps_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}