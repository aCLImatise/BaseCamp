version 1.0

task PysradbSrxtosrs {
  input {
    File? save_to
    Boolean? detailed
    Boolean? desc
    Boolean? expand
    String srx_ids
  }
  command <<<
    pysradb srx_to_srs \
      ~{srx_ids} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (expand) then "--expand" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pysradb:1.0.1--py_0"
  }
  parameter_meta {
    save_to: "Save output to file"
    detailed: "Output additional columns: [run_accession, study_accession]"
    desc: "Should sample_attribute be included"
    expand: "Should sample_attribute be expanded"
    srx_ids: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}