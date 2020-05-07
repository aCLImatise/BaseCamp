version 1.0

task Prefetch.2.10.3 {
  input {
    File typeType
    Int minMinSize
    Int maxMaxSize
    String forceForce
    String progressProgress
    Boolean checkCheckAll
    String outputOutputFile
    File outputOutputDirectory
    File ngcNgc
    File permPerm
    String locationLocation
    File cartCart
    Boolean disableDisableMultithreading
    String logLogLevel
    File optionOptionFile
  }
  command <<<
    prefetch.2.10.3 \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(minMinSize) then ("--min_size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(maxMaxSize) then ("--max_size " +  '"' + maxMaxSize + '"') else ""} \
      ~{if defined(forceForce) then ("--force " +  '"' + forceForce + '"') else ""} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{true="--check-all" false="" checkCheckAll} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(cartCart) then ("--cart " +  '"' + cartCart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}