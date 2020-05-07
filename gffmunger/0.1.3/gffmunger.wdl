version 1.0

task Gffmunger {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean noNoValidate
    Boolean forceForce
    String fastFastAFile
    String inputInputFile
    String outputOutputFile
    String configConfig
    String genomeGenomeTools
    String? moveMovePolypeptideAnNot
    String? nullNull
    String? commandCommand
  }
  command <<<
    gffmunger \
      ~{moveMovePolypeptideAnNot} \
      ~{commandCommand} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--no-validate" false="" noNoValidate} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(fastFastAFile) then ("--fasta-file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(genomeGenomeTools) then ("--genometools " +  '"' + genomeGenomeTools + '"') else ""} \
      ~{nullNull}
  >>>
}