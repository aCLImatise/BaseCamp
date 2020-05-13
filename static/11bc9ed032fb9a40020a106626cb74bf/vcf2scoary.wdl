version 1.0

task Vcf2scoary {
  input {
    String outOut
    String typesTypes
    Boolean forceForce
  }
  command <<<
    vcf2scoary \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(typesTypes) then ("--types " +  '"' + typesTypes + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}