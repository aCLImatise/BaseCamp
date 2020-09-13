version 1.0

task ArrowAnnotationsAddComment {
  input {
    String? comments
    String? organism
    String? sequence
    String feature_id
  }
  command <<<
    arrow annotations add_comment \
      ~{feature_id} \
      ~{if defined(comments) then ("--comments " +  '"' + comments + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    comments: "Feature comments"
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}