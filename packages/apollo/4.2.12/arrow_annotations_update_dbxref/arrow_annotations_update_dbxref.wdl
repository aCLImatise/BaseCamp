version 1.0

task ArrowAnnotationsUpdateDbxref {
  input {
    String? organism
    String? sequence
    String feature_id
    String old_db
  }
  command <<<
    arrow annotations update_dbxref \
      ~{feature_id} \
      ~{old_db} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
    old_db: ""
  }
  output {
    File out_stdout = stdout()
  }
}