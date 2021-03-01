version 1.0

task ArrowAnnotationsSetDescription {
  input {
    String? organism
    String? sequence
    String feature_id
    String description
  }
  command <<<
    arrow annotations set_description \
      ~{feature_id} \
      ~{description} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
    description: ""
  }
  output {
    File out_stdout = stdout()
  }
}