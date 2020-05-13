version 1.0

task DownloadSpectacleData.sh {
  input {
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean zeroZero
  }
  command <<<
    download_spectacle_data.sh \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--zero" false="" zeroZero}
  >>>
}