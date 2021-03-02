version 1.0

task ArrowAnnotationsAddFeature {
  input {
    String? feature
    String? organism
    String? sequence
  }
  command <<<
    arrow annotations add_feature \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature: "Feature information"
    organism: "Organism Common Name"
    sequence: "Sequence Name"
  }
  output {
    File out_stdout = stdout()
  }
}