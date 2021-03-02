version 1.0

task TaxonomyFilterRefseq {
  input {
    Boolean? no_curated
    Boolean? no_predicted
    String? db
    String? flags
    String input_fast_a
    String ancestor_name
  }
  command <<<
    taxonomy_filter_refseq \
      ~{flags} \
      ~{input_fast_a} \
      ~{ancestor_name} \
      ~{if (no_curated) then "--no_curated" else ""} \
      ~{if (no_predicted) then "--no_predicted" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_curated: "Don't accept curated RNAs and proteins (NM_, NR_ and NP_ accessions)"
    no_predicted: "Don't accept computationally predicted RNAs and proteins (XM_, XR_ and XP_ accessions)"
    db: "URL for SQLite taxonomy database"
    flags: ""
    input_fast_a: ""
    ancestor_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}