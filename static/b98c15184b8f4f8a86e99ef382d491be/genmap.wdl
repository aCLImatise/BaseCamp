version 1.0

task Genmap {
  input {
    Boolean versionVersionCheck
    Boolean copyrightCopyright
  }
  command <<<
    genmap \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{true="--copyright" false="" copyrightCopyright}
  >>>
}