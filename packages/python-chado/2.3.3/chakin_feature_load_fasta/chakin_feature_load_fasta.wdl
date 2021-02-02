version 1.0

task ChakinFeatureLoadFasta {
  input {
    String? sequence_type
    Int? analysis_id
    String? re_name
    String? re_unique_name
    Boolean? match_on_name
    Boolean? update
    Int? db
    String? re_db_accession
    String? rel_type
    String? re_parent
    String? parent_type
    String fast_a
    String organism_id
  }
  command <<<
    chakin feature load_fasta \
      ~{fast_a} \
      ~{organism_id} \
      ~{if defined(sequence_type) then ("--sequence_type " +  '"' + sequence_type + '"') else ""} \
      ~{if defined(analysis_id) then ("--analysis_id " +  '"' + analysis_id + '"') else ""} \
      ~{if defined(re_name) then ("--re_name " +  '"' + re_name + '"') else ""} \
      ~{if defined(re_unique_name) then ("--re_uniquename " +  '"' + re_unique_name + '"') else ""} \
      ~{if (match_on_name) then "--match_on_name" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(re_db_accession) then ("--re_db_accession " +  '"' + re_db_accession + '"') else ""} \
      ~{if defined(rel_type) then ("--rel_type " +  '"' + rel_type + '"') else ""} \
      ~{if defined(re_parent) then ("--re_parent " +  '"' + re_parent + '"') else ""} \
      ~{if defined(parent_type) then ("--parent_type " +  '"' + parent_type + '"') else ""}
  >>>
  parameter_meta {
    sequence_type: "Sequence type  [default: contig]"
    analysis_id: "Analysis ID"
    re_name: "Regular expression to extract the feature name from\\nthe fasta sequence id (first capturing group will be\\nused)."
    re_unique_name: "Regular expression to extract the feature name from\\nthe fasta sequence id (first capturing group will be\\nused)."
    match_on_name: "Match existing features using their name instead of\\ntheir uniquename"
    update: "Update existing feature with new sequence instead of\\nthrowing an error"
    db: "External database to cross reference to."
    re_db_accession: "Regular expression to extract an external database\\naccession from the fasta sequence id (first\\ncapturing group will be used)."
    rel_type: "Relation type to parent feature ('part_of' or\\n'derives_from')."
    re_parent: "Regular expression to extract parent uniquename from\\nthe fasta sequence id (first capturing group will be\\nused)."
    parent_type: "Sequence type of the parent feature"
    fast_a: ""
    organism_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}