version 1.0

task MakeTracksFile {
  input {
    String trackTrackFiles
    String oO
    String? bedBedFile
    String? etcEtc
  }
  command <<<
    make_tracks_file \
      ~{bedBedFile} \
      ~{if defined(trackTrackFiles) then ("--trackFiles " +  '"' + trackTrackFiles + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{etcEtc}
  >>>
}