version 1.0

task PalFinder {
  input {
    String? perlPerl
    String? palPalFinderV00204pl
    String? configConfigFile
  }
  command <<<
    pal_finder \
      ~{perlPerl} \
      ~{palPalFinderV00204pl} \
      ~{configConfigFile}
  >>>
}