version 1.0

task PrefetchOrig.2.10.3 {
  input {
    Boolean typeType
    String transportTransport
    Boolean locationLocation
    Int minMinSize
    Int maxMaxSize
    String forceForce
    String progressProgress
    Boolean eliminateEliminateQuals
    Boolean checkCheckAll
    String orderOrder
    String rowsRows
    File permPerm
    File ngcNgc
    Boolean cartCart
    Boolean ascpAscpPath
    String ascpAscpOptions
    File outputOutputFile
    Directory outputOutputDirectory
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    prefetch-orig.2.10.3 \
      ~{true="--type" false="" typeType} \
      ~{if defined(transportTransport) then ("--transport " +  '"' + transportTransport + '"') else ""} \
      ~{true="--location" false="" locationLocation} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(maxMaxSize) then ("--max-size " +  '"' + maxMaxSize + '"') else ""} \
      ~{if defined(forceForce) then ("--force " +  '"' + forceForce + '"') else ""} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{true="--eliminate-quals" false="" eliminateEliminateQuals} \
      ~{true="--check-all" false="" checkCheckAll} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{if defined(rowsRows) then ("--rows " +  '"' + rowsRows + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{true="--cart" false="" cartCart} \
      ~{true="--ascp-path" false="" ascpAscpPath} \
      ~{if defined(ascpAscpOptions) then ("--ascp-options " +  '"' + ascpAscpOptions + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}