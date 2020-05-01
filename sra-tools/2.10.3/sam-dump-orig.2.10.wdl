version 1.0

task SamDumpOrig.2.10.3 {
  input {
    Boolean cgCgEvidence
    Boolean cgCgEvDnb
    Boolean cgCgMappings
    Boolean cgCgSam
    Boolean reportReport
    Boolean outputOutputFile
    Boolean outputOutputBufferSize
    Boolean cacheCacheReport
    Boolean unalignedUnalignedSpotsOnly
    Boolean cgCgNames
    Boolean cursorCursorCache
    Boolean minMinMapq
    Boolean noNoMateCache
    Boolean rnaRnaSplicing
    Boolean rnaRnaSpliceLevel
    Boolean rnaRnaSpliceLog
    Boolean disableDisableMultithreading
    Boolean withWithMdFlag
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    sam-dump-orig.2.10.3 \
      ~{true="--CG-evidence" false="" cgCgEvidence} \
      ~{true="--CG-ev-dnb" false="" cgCgEvDnb} \
      ~{true="--CG-mappings" false="" cgCgMappings} \
      ~{true="--CG-SAM" false="" cgCgSam} \
      ~{true="--report" false="" reportReport} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--output-buffer-size" false="" outputOutputBufferSize} \
      ~{true="--cachereport" false="" cacheCacheReport} \
      ~{true="--unaligned-spots-only" false="" unalignedUnalignedSpotsOnly} \
      ~{true="--CG-names" false="" cgCgNames} \
      ~{true="--cursor-cache" false="" cursorCursorCache} \
      ~{true="--min-mapq" false="" minMinMapq} \
      ~{true="--no-mate-cache" false="" noNoMateCache} \
      ~{true="--rna-splicing" false="" rnaRnaSplicing} \
      ~{true="--rna-splice-level" false="" rnaRnaSpliceLevel} \
      ~{true="--rna-splice-log" false="" rnaRnaSpliceLog} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{true="--with-md-flag" false="" withWithMdFlag} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}