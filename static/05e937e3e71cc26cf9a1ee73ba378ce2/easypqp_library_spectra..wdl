version 1.0

task EasypqpLibrarySpectra {
  input {
    String easy_pqp
    String library
    String? in_files
  }
  command <<<
    easypqp library spectra_ \
      ~{easy_pqp} \
      ~{library} \
      ~{in_files}
  >>>
  runtime {
    docker: "quay.io/biocontainers/easypqp:0.1.10--py_0"
  }
  parameter_meta {
    easy_pqp: ""
    library: ""
    in_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}