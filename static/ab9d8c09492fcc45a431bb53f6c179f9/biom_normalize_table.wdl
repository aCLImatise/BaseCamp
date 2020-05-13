version 1.0

task BiomNormalizeTable {
  input {
    File inputInputFp
    File outputOutputFp
    Boolean relativeRelativeAbund
    Boolean presencePresenceAbsence
    Boolean axisAxis
  }
  command <<<
    biom normalize-table \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{true="--relative-abund" false="" relativeRelativeAbund} \
      ~{true="--presence-absence" false="" presencePresenceAbsence} \
      ~{true="--axis" false="" axisAxis}
  >>>
}