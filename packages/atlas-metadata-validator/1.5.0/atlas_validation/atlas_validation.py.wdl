version 1.0

task AtlasValidationpy {
  command <<<
    atlas_validation_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/atlas-metadata-validator:1.5.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}