version 1.0

task Pal2nal.pl {
  input {
    String sequenceSequence
    String idsIds
  }
  command <<<
    pal2nal.pl \
      ~{if defined(sequenceSequence) then ("- sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(idsIds) then ("- IDs " +  '"' + idsIds + '"') else ""}
  >>>
}