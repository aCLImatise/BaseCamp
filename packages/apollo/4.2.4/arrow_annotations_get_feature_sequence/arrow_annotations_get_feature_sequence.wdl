version 1.0

task ArrowAnnotationsGetFeatureSequence {
  input {
    String? organism
    String? sequence
    String feature_id
  }
  command <<<
    arrow annotations get_feature_sequence \
      ~{feature_id} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}