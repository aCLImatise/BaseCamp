version 1.0

task BiomTableIds {
  input {
    File inputInputFp
    Boolean observationsObservations
  }
  command <<<
    biom table-ids \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{true="--observations" false="" observationsObservations}
  >>>
}