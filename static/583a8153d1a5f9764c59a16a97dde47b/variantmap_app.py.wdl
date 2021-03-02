version 1.0

task VariantmapApppy {
  command <<<
    variantmap_app_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/variantmap:1.0.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}