version 1.0

task Pangolearnpy {
  input {
    File? header_file
  }
  command <<<
    pangolearn_py \
      ~{if defined(header_file) then ("--header-file " +  '"' + header_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolin:2.3.2--py_0"
  }
  parameter_meta {
    header_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}