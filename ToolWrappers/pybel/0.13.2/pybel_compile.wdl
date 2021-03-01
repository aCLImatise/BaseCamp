version 1.0

task PybelCompile {
  input {
    Boolean? allow_naked_names
    Boolean? allow_nested
    Boolean? disallow_unqualified_translocations
    Boolean? no_identifier_validation
    Boolean? no_citation_clearing
    String? required_annotations
    File path
  }
  command <<<
    pybel compile \
      ~{path} \
      ~{if (allow_naked_names) then "--allow-naked-names" else ""} \
      ~{if (allow_nested) then "--allow-nested" else ""} \
      ~{if (disallow_unqualified_translocations) then "--disallow-unqualified-translocations" else ""} \
      ~{if (no_identifier_validation) then "--no-identifier-validation" else ""} \
      ~{if (no_citation_clearing) then "--no-citation-clearing" else ""} \
      ~{if defined(required_annotations) then ("--required-annotations " +  '"' + required_annotations + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    allow_naked_names: "Enable lenient parsing for naked names"
    allow_nested: "Enable lenient parsing for nested statements"
    disallow_unqualified_translocations: "Disallow unqualified translocations"
    no_identifier_validation: "Turn off identifier validation"
    no_citation_clearing: "Turn off citation clearing"
    required_annotations: "Specify multiple required annotations"
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}