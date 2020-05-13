version 1.0

task SmofUniq {
  input {
    Boolean countCount
    Boolean repeatedRepeated
    Boolean uniqUniq
    Boolean packPack
    Boolean unpackUnpack
    String packPackSep
    Boolean finalFinalHeader
    String? inputInput
  }
  command <<<
    smof uniq \
      ~{inputInput} \
      ~{true="--count" false="" countCount} \
      ~{true="--repeated" false="" repeatedRepeated} \
      ~{true="--uniq" false="" uniqUniq} \
      ~{true="--pack" false="" packPack} \
      ~{true="--unpack" false="" unpackUnpack} \
      ~{if defined(packPackSep) then ("--pack-sep " +  '"' + packPackSep + '"') else ""} \
      ~{true="--final-header" false="" finalFinalHeader}
  >>>
}