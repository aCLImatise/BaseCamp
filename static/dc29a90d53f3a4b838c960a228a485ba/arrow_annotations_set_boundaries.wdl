version 1.0

task ArrowAnnotationsSetBoundaries {
  input {
    String? organism
    String? sequence
    String feature_id
    String start
    String end
  }
  command <<<
    arrow annotations set_boundaries \
      ~{feature_id} \
      ~{start} \
      ~{end} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
    start: ""
    end: ""
  }
  output {
    File out_stdout = stdout()
  }
}