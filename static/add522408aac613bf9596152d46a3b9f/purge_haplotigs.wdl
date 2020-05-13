version 1.0

task PurgeHaplotigs {
  input {
    String? histHist
    String? covCov
    String? purgePurge
    String? clipClip
    String? placePlace
    String? testTest
  }
  command <<<
    purge_haplotigs \
      ~{histHist} \
      ~{clipClip} \
      ~{covCov} \
      ~{placePlace} \
      ~{purgePurge} \
      ~{testTest}
  >>>
}