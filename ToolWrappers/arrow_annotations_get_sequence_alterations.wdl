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
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
  }
  output {
    File out_stdout = stdout()
  }
}