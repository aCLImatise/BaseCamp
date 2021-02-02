version 1.0

task ArrowAnnotationsUpdateAttribute {
  input {
    String? organism
    String? sequence
    String feature_id
    String attribute_key
  }
  command <<<
    arrow annotations update_attribute \
      ~{feature_id} \
      ~{attribute_key} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
    attribute_key: ""
  }
  output {
    File out_stdout = stdout()
  }
}