version 1.0

task AtlasValidationpy {
  command <<<
    atlas_validation_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/atlas-metadata-validator:1.4.1--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}