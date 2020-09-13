version 1.0

task Icaruspy {
  input {
    String? reference
    Boolean? fast
    Boolean? no_html
    Boolean? unique_mapping
    Boolean? max_ref_number
    Boolean? references_list
    Boolean? blast_db
    Boolean? test_no_ref
    Boolean? test_sv
  }
  command <<<
    icarus_py \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (no_html) then "--no-html" else ""} \
      ~{if (unique_mapping) then "--unique-mapping" else ""} \
      ~{if (max_ref_number) then "--max-ref-number" else ""} \
      ~{if (references_list) then "--references-list" else ""} \
      ~{if (blast_db) then "--blast-db" else ""} \
      ~{if (test_no_ref) then "--test-no-ref" else ""} \
      ~{if (test_sv) then "--test-sv" else ""}
  >>>
  parameter_meta {
    reference: ""
    fast: ""
    no_html: ""
    unique_mapping: ""
    max_ref_number: ""
    references_list: ""
    blast_db: ""
    test_no_ref: ""
    test_sv: ""
  }
  output {
    File out_stdout = stdout()
  }
}