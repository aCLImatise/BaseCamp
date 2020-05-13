version 1.0

task SkgConvert.py {
  input {
    File outputOutput
    String fromFrom
    String toTo
    Boolean flattenFlatten
    Boolean mergeMerge
    String gffGffTag
    String gffGffType
    String refRefFlatType
    File? fileFile
  }
  command <<<
    skg_convert.py \
      ~{fileFile} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fromFrom) then ("--from " +  '"' + fromFrom + '"') else ""} \
      ~{if defined(toTo) then ("--to " +  '"' + toTo + '"') else ""} \
      ~{true="--flatten" false="" flattenFlatten} \
      ~{true="--merge" false="" mergeMerge} \
      ~{if defined(gffGffTag) then ("--gff-tag " +  '"' + gffGffTag + '"') else ""} \
      ~{if defined(gffGffType) then ("--gff-type " +  '"' + gffGffType + '"') else ""} \
      ~{if defined(refRefFlatType) then ("--refflat-type " +  '"' + refRefFlatType + '"') else ""}
  >>>
}