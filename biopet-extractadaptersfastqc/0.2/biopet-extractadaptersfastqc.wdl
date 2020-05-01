version 1.0

task BiopetExtractadaptersfastqc {
  input {
    String logLogLevel
    String inputInputFile
    String adapterAdapterOutputFile
    String contamContamSoutputfile
    Boolean skipSkipContamS
    String knownKnownContamFile
    String knownKnownAdapterFile
    String adapterAdapterCutOff
    Boolean outputOutputAsFastA
  }
  command <<<
    biopet-extractadaptersfastqc \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(inputInputFile) then ("--inputFile " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(adapterAdapterOutputFile) then ("--adapterOutputFile " +  '"' + adapterAdapterOutputFile + '"') else ""} \
      ~{if defined(contamContamSoutputfile) then ("--contamsOutputFile " +  '"' + contamContamSoutputfile + '"') else ""} \
      ~{true="--skipContams" false="" skipSkipContamS} \
      ~{if defined(knownKnownContamFile) then ("--knownContamFile " +  '"' + knownKnownContamFile + '"') else ""} \
      ~{if defined(knownKnownAdapterFile) then ("--knownAdapterFile " +  '"' + knownKnownAdapterFile + '"') else ""} \
      ~{if defined(adapterAdapterCutOff) then ("--adapterCutoff " +  '"' + adapterAdapterCutOff + '"') else ""} \
      ~{true="--outputAsFasta" false="" outputOutputAsFastA}
  >>>
}