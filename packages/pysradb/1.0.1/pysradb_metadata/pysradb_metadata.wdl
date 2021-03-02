version 1.0

task PysradbMetadata {
  input {
    File? save_to
    Boolean? assay
    Boolean? desc
    Boolean? detailed
    Boolean? expand
    String srp_id
  }
  command <<<
    pysradb metadata \
      ~{srp_id} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if (assay) then "--assay" else ""} \
      ~{if (desc) then "--desc" else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (expand) then "--expand" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pysradb:1.0.1--py_0"
  }
  parameter_meta {
    save_to: "Save metadata dataframe to file"
    assay: "Include assay type in output"
    desc: "Should sample_attribute be included"
    detailed: "Display detailed metadata table"
    expand: "Should sample_attribute be expanded"
    srp_id: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}