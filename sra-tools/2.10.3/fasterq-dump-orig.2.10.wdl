version 1.0

task FasterqDumpOrig.2.10.3 {
  input {
    Boolean concatenateConcatenateReads
    Boolean stdoutStdout
    Boolean forceForce
    Boolean rowidRowidAsName
    Boolean skipSkipTechnical
    Boolean includeIncludeTechnical
    Boolean printPrintReadNr
    Boolean minMinReadLen
    Boolean tableTable
    Boolean strictStrict
    Boolean basesBases
    Boolean appendAppend
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    File? pathPath
  }
  command <<<
    fasterq-dump-orig.2.10.3 \
      ~{pathPath} \
      ~{true="--concatenate-reads" false="" concatenateConcatenateReads} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--force" false="" forceForce} \
      ~{true="--rowid-as-name" false="" rowidRowidAsName} \
      ~{true="--skip-technical" false="" skipSkipTechnical} \
      ~{true="--include-technical" false="" includeIncludeTechnical} \
      ~{true="--print-read-nr" false="" printPrintReadNr} \
      ~{true="--min-read-len" false="" minMinReadLen} \
      ~{true="--table" false="" tableTable} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--bases" false="" basesBases} \
      ~{true="--append" false="" appendAppend} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}