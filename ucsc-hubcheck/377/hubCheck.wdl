version 1.0

task HubCheck {
  input {
    Boolean noNoTracks
    Boolean checkCheckSettings
    Boolean versionVersion
    Boolean extraExtra
    String levelLevel
    Boolean settingsSettings
    Boolean udcUdcDir
    Boolean printPrintMeta
    String cacheCacheTime
    Boolean verboseVerbose
  }
  command <<<
    hubCheck \
      ~{true="-noTracks" false="" noNoTracks} \
      ~{true="-checkSettings" false="" checkCheckSettings} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-extra" false="" extraExtra} \
      ~{if defined(levelLevel) then ("-level " +  '"' + levelLevel + '"') else ""} \
      ~{true="-settings" false="" settingsSettings} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{true="-printMeta" false="" printPrintMeta} \
      ~{if defined(cacheCacheTime) then ("-cacheTime " +  '"' + cacheCacheTime + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}