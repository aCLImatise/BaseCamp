version 1.0

task Vcontact2Gene2genome {
  input {
    String sourceSourceType
    Boolean keepKeepDescriptions
    Boolean compatibilityCompatibility
  }
  command <<<
    vcontact2_gene2genome \
      ~{if defined(sourceSourceType) then ("--source-type " +  '"' + sourceSourceType + '"') else ""} \
      ~{true="--keep-descriptions" false="" keepKeepDescriptions} \
      ~{true="--compatibility" false="" compatibilityCompatibility}
  >>>
}