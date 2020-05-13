version 1.0

task GetGffInfoMongodb {
  input {
    File taxonomyTaxonomy
    Boolean noNoCache
    Int indentIndent
    Boolean progressProgress
  }
  command <<<
    get-gff-info mongodb \
      ~{if defined(taxonomyTaxonomy) then ("--taxonomy " +  '"' + taxonomyTaxonomy + '"') else ""} \
      ~{true="--no-cache" false="" noNoCache} \
      ~{if defined(indentIndent) then ("--indent " +  '"' + indentIndent + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}