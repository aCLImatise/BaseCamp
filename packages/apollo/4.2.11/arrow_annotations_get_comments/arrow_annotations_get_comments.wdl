version 1.0

task ArrowAnnotationsGetComments {
  input {
    String? organism
    String? sequence
    String feature_id
  }
  command <<<
    arrow annotations get_comments \
      ~{feature_id} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}