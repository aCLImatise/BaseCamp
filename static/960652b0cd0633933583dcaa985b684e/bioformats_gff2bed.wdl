version 1.0

task BioformatsGff2bed {
  input {
    Boolean aA
    String nameNameTag
    String missingMissingValue
    Boolean genesGenes
    String parentParentTag
    Boolean noNoOrderCheck
    String? gffGffFile
    String? typeType
    String? outputOutputFile
  }
  command <<<
    bioformats gff2bed \
      ~{gffGffFile} \
      ~{true="-a" false="" aA} \
      ~{if defined(nameNameTag) then ("--name_tag " +  '"' + nameNameTag + '"') else ""} \
      ~{if defined(missingMissingValue) then ("--missing_value " +  '"' + missingMissingValue + '"') else ""} \
      ~{true="--genes" false="" genesGenes} \
      ~{if defined(parentParentTag) then ("--parent_tag " +  '"' + parentParentTag + '"') else ""} \
      ~{true="--no_order_check" false="" noNoOrderCheck} \
      ~{typeType} \
      ~{outputOutputFile}
  >>>
}