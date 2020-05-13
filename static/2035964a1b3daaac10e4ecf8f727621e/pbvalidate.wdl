version 1.0

task Pbvalidate {
  input {
    Boolean quickQuick
    Int maxMax
    Int maxMaxRecords
    String typeType
    Boolean indexIndex
    Boolean strictStrict
    String xXUnitOut
    Boolean unalignedUnaligned
    Boolean unmappedUnmapped
    Boolean alignedAligned
    Boolean mappedMapped
    String contentsContents
    String referenceReference
    File? fileFile
  }
  command <<<
    pbvalidate \
      ~{fileFile} \
      ~{true="--quick" false="" quickQuick} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(maxMaxRecords) then ("--max-records " +  '"' + maxMaxRecords + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--index" false="" indexIndex} \
      ~{true="--strict" false="" strictStrict} \
      ~{if defined(xXUnitOut) then ("--xunit-out " +  '"' + xXUnitOut + '"') else ""} \
      ~{true="--unaligned" false="" unalignedUnaligned} \
      ~{true="--unmapped" false="" unmappedUnmapped} \
      ~{true="--aligned" false="" alignedAligned} \
      ~{true="--mapped" false="" mappedMapped} \
      ~{if defined(contentsContents) then ("--contents " +  '"' + contentsContents + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""}
  >>>
}