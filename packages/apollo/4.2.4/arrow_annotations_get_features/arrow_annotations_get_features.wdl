version 1.0

task ArrowAnnotationsGetFeatures {
  input {
    String? organism
    String? sequence
  }
  command <<<
    arrow annotations get_features \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
  }
  output {
    File out_stdout = stdout()
  }
}