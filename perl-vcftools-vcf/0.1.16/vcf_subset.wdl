version 1.0

task VcfSubset {
  input {
    Boolean trimTrimAltAlleles
    String columnsColumns
    Boolean excludeExcludeRef
    Boolean forceForce
    Boolean privatePrivate
    Boolean replaceReplaceWithRef
    String typeType
    Boolean keepKeepUncalled
  }
  command <<<
    vcf-subset \
      ~{true="--trim-alt-alleles" false="" trimTrimAltAlleles} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""} \
      ~{true="--exclude-ref" false="" excludeExcludeRef} \
      ~{true="--force" false="" forceForce} \
      ~{true="--private" false="" privatePrivate} \
      ~{true="--replace-with-ref" false="" replaceReplaceWithRef} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--keep-uncalled" false="" keepKeepUncalled}
  >>>
}