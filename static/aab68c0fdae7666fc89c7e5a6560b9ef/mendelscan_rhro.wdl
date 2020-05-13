version 1.0

task MendelscanRhro {
  input {
    Boolean pedPedFile
    Boolean centromereCentromereFile
    Boolean outputOutputWindows
    Boolean inheritanceInheritance
  }
  command <<<
    mendelscan rhro \
      ~{true="--ped-file" false="" pedPedFile} \
      ~{true="--centromere-file" false="" centromereCentromereFile} \
      ~{true="--output-windows" false="" outputOutputWindows} \
      ~{true="--inheritance" false="" inheritanceInheritance}
  >>>
}