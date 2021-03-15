version 1.0

task MgtoolkitOriginalMetadata {
  input {
    Array[String] accession
  }
  command <<<
    mg_toolkit original_metadata \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mg-toolkit:0.9.1--py_0"
  }
  parameter_meta {
    accession: "Provide study accession, e.g. PRJEB1787 or ERP001736.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}