version 1.0

task DnpCorrprofile {
  input {
    Boolean versionVersionCheck
    Int windowWindow
    Int lengthLength
    Boolean verboseVerbose
  }
  command <<<
    dnp-corrprofile \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}