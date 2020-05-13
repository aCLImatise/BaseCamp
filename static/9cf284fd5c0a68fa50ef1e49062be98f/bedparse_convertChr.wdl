version 1.0

task BedparseConvertChr {
  input {
    String assemblyAssembly
    String targetTarget
    Boolean allowAllowMissing
    Boolean suppressSuppressMissing
    Boolean patchesPatches
    String? bedBedFile
  }
  command <<<
    bedparse convertChr \
      ~{bedBedFile} \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{true="--allowMissing" false="" allowAllowMissing} \
      ~{true="--suppressMissing" false="" suppressSuppressMissing} \
      ~{true="--patches" false="" patchesPatches}
  >>>
}