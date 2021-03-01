version 1.0

task OncogeminiFusions {
  input {
    Boolean? in_cosmic_census
    Float? min_qual
    String? evidence_type
  }
  command <<<
    oncogemini fusions \
      ~{if (in_cosmic_census) then "--in_cosmic_census" else ""} \
      ~{if defined(min_qual) then ("--min_qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(evidence_type) then ("--evidence_type " +  '"' + evidence_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_cosmic_census: "One or both genes in fusion is in COSMIC cancer census"
    min_qual: "The min variant quality (VCF QUAL) (def: None)."
    evidence_type: "The supporting evidence types for the variant (\\\"PE\\\",\\n\\\"SR\\\", or \\\"PE,SR\\\").\\n"
  }
  output {
    File out_stdout = stdout()
  }
}