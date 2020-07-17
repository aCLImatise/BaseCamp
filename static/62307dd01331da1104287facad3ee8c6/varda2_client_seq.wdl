version 1.0

task Varda2ClientSeq {
  input {
    String? sequence
  }
  command <<<
    varda2-client seq \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    sequence: "Sequence"
  }
}