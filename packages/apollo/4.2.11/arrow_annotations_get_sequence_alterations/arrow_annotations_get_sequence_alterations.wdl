version 1.0

task ArrowAnnotationsGetSequenceAlterations {
  input {
    String? organism
    String? sequence
  }
  command <<<
    arrow annotations get_sequence_alterations \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
  }
  output {
    File out_stdout = stdout()
  }
}