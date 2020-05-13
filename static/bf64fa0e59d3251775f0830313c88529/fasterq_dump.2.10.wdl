version 1.0

task FasterqDump.2.10.3 {
  input {
    Boolean concatenateConcatenateReads
    Boolean stdoutStdout
    Boolean forceForce
    Boolean rowidRowidAsName
    Boolean skipSkipTechnical
    Boolean includeIncludeTechnical
    Boolean printPrintReadNr
    String minMinReadLen
    String tableTable
    Boolean strictStrict
    String basesBases
    Boolean appendAppend
    File ngcNgc
    File permPerm
    String locationLocation
    File cartCart
    Boolean disableDisableMultithreading
    String logLogLevel
    File optionOptionFile
  }
  command <<<
    fasterq-dump.2.10.3 \
      ~{true="--concatenate-reads" false="" concatenateConcatenateReads} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--force" false="" forceForce} \
      ~{true="--rowid-as-name" false="" rowidRowidAsName} \
      ~{true="--skip-technical" false="" skipSkipTechnical} \
      ~{true="--include-technical" false="" includeIncludeTechnical} \
      ~{true="--print-read-nr" false="" printPrintReadNr} \
      ~{if defined(minMinReadLen) then ("--min-read-len " +  '"' + minMinReadLen + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--strict" false="" strictStrict} \
      ~{if defined(basesBases) then ("--bases " +  '"' + basesBases + '"') else ""} \
      ~{true="--append" false="" appendAppend} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(cartCart) then ("--cart " +  '"' + cartCart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}