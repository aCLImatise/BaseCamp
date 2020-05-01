version 1.0

task GmapBuild {
  input {
    Int nNMessages
    String? optionsOptions
    String? fastFastAFiles
  }
  command <<<
    gmap_build \
      ~{optionsOptions} \
      ~{if defined(nNMessages) then ("--nmessages " +  '"' + nNMessages + '"') else ""} \
      ~{fastFastAFiles}
  >>>
}