version 1.0

task PysradbSrxtosrr {
  input {
    Boolean? desc
    Boolean? detailed
    Boolean? expand
    File? save_to
    String srx_ids
  }
  command <<<
    pysradb srx_to_srr \
      ~{srx_ids} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (expand) then "--expand" else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pysradb:1.0.1--py_0"
  }
  parameter_meta {
    desc: "Should sample_attribute be included"
    detailed: "Output additional columns: [sample_accession,\\nstudy_accession]"
    expand: "Should sample_attribute be expanded"
    save_to: "Save output to file"
    srx_ids: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_save_to = "${in_save_to}"
  }
}