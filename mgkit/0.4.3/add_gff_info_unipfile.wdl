version 1.0

task AddGffInfoUnipfile {
  input {
    String mappingMappingFile
    Boolean forceForceTaxOnId
    Boolean mappingMapping
    Boolean progressProgress
  }
  command <<<
    add-gff-info unipfile \
      ~{if defined(mappingMappingFile) then ("--mapping-file " +  '"' + mappingMappingFile + '"') else ""} \
      ~{true="--force-taxon-id" false="" forceForceTaxOnId} \
      ~{true="--mapping" false="" mappingMapping} \
      ~{true="--progress" false="" progressProgress}
  >>>
}