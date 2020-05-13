version 1.0

task Lambda2 {
  input {
    Boolean versionVersionCheck
    Boolean copyrightCopyright
  }
  command <<<
    lambda2 \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{true="--copyright" false="" copyrightCopyright}
  >>>
}