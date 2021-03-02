version 1.0

task HamronizeOUTPUTBwtoutputgeneMappingDatatxt {
  input {
    String ham_ron_ize
    String tool
    String options
  }
  command <<<
    hamronize OUTPUT_bwtoutput_gene_mapping_data_txt \
      ~{ham_ron_ize} \
      ~{tool} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hamronization:1.0.3--py_0"
  }
  parameter_meta {
    ham_ron_ize: ""
    tool: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}