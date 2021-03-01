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
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
  }
  output {
    File out_stdout = stdout()
  }
}