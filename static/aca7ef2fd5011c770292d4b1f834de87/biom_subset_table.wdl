version 1.0

task BiomSubsetTable {
  input {
    File inputInputHdf5Fp
    File inputInputJsonFp
    Boolean axisAxis
    File idsIds
    File outputOutputFp
  }
  command <<<
    biom subset-table \
      ~{if defined(inputInputHdf5Fp) then ("--input-hdf5-fp " +  '"' + inputInputHdf5Fp + '"') else ""} \
      ~{if defined(inputInputJsonFp) then ("--input-json-fp " +  '"' + inputInputJsonFp + '"') else ""} \
      ~{true="--axis" false="" axisAxis} \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}