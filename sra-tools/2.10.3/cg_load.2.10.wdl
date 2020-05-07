version 1.0

task CgLoad.2.10.3 {
  input {
    Boolean mapMap
    Boolean outputOutput
    Boolean asmAsm
    Boolean loadLoadExtraEvidence
    Boolean schemaSchema
    Boolean refseqRefseqConfig
    Boolean refseqRefseqPath
    Boolean refRefFile
    Boolean forceForce
    Boolean writeWriteReference
    Boolean writeWriteRead
    Boolean qualQualQuant
    Boolean noNoSpotGroup
    Boolean minMinMapq
    Boolean noNoSecondary
    Boolean singleSingleMate
    Boolean clusterClusterSize
    Boolean inputInputNoThreads
    Boolean libraryLibrary
    String xmlXmlLog
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    cg-load.2.10.3 \
      ~{true="--map" false="" mapMap} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--asm" false="" asmAsm} \
      ~{true="--load-extra-evidence" false="" loadLoadExtraEvidence} \
      ~{true="--schema" false="" schemaSchema} \
      ~{true="--refseq-config" false="" refseqRefseqConfig} \
      ~{true="--refseq-path" false="" refseqRefseqPath} \
      ~{true="--ref-file" false="" refRefFile} \
      ~{true="--force" false="" forceForce} \
      ~{true="--write-reference" false="" writeWriteReference} \
      ~{true="--write-read" false="" writeWriteRead} \
      ~{true="--qual-quant" false="" qualQualQuant} \
      ~{true="--no-spotgroup" false="" noNoSpotGroup} \
      ~{true="--min-mapq" false="" minMinMapq} \
      ~{true="--no-secondary" false="" noNoSecondary} \
      ~{true="--single-mate" false="" singleSingleMate} \
      ~{true="--cluster-size" false="" clusterClusterSize} \
      ~{true="--input-no-threads" false="" inputInputNoThreads} \
      ~{true="--library" false="" libraryLibrary} \
      ~{if defined(xmlXmlLog) then ("--xml-log " +  '"' + xmlXmlLog + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}