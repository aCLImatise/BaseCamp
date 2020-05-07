version 1.0

task GenomepyInstall {
  input {
    String genomeGenomeDir
    String localLocalName
    String maskMask
    String regexRegex
    Boolean noNoMatch
    Boolean bBGzip
    Boolean annotationAnnotation
    Boolean forceForce
    Boolean ensemblEnsemblTopLevel
    Int ensemblEnsemblVersion
  }
  command <<<
    genomepy install \
      ~{if defined(genomeGenomeDir) then ("--genome_dir " +  '"' + genomeGenomeDir + '"') else ""} \
      ~{if defined(localLocalName) then ("--localname " +  '"' + localLocalName + '"') else ""} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""} \
      ~{true="--no-match" false="" noNoMatch} \
      ~{true="--bgzip" false="" bBGzip} \
      ~{true="--annotation" false="" annotationAnnotation} \
      ~{true="--force" false="" forceForce} \
      ~{true="--ensembl-toplevel" false="" ensemblEnsemblTopLevel} \
      ~{if defined(ensemblEnsemblVersion) then ("--ensembl-version " +  '"' + ensemblEnsemblVersion + '"') else ""}
  >>>
}