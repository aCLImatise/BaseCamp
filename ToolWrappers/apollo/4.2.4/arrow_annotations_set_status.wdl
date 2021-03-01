version 1.0

task ArrowAnnotationsSetStatus {
  input {
    String? organism
    String? sequence
    String feature_id
    String status
  }
  command <<<
    arrow annotations set_status \
      ~{feature_id} \
      ~{status} \
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
    status: ""
  }
  output {
    File out_stdout = stdout()
  }
}