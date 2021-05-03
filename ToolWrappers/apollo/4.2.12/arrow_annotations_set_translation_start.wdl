version 1.0

task ArrowAnnotationsSetTranslationStart {
  input {
    String? organism
    String? sequence
    String feature_id
    String start
  }
  command <<<
    arrow annotations set_translation_start \
      ~{feature_id} \
      ~{start} \
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
    start: ""
  }
  output {
    File out_stdout = stdout()
  }
}