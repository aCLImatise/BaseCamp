version 1.0

task WebSync {
  input {
    Boolean webWebSyncLog
    Boolean webWebSyncLog
    Boolean webWebSyncLog
    Boolean webWebSyncLog
    Boolean webWebSyncLog
    Boolean debugDebug
    String connectionsConnections
    Boolean skipSkipScan
  }
  command <<<
    webSync \
      ~{true="- webSyncLog" false="" webWebSyncLog} \
      ~{true="- webSyncLog" false="" webWebSyncLog} \
      ~{true="- webSyncLog" false="" webWebSyncLog} \
      ~{true="- webSyncLog" false="" webWebSyncLog} \
      ~{true="- webSyncLog" false="" webWebSyncLog} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(connectionsConnections) then ("--connections " +  '"' + connectionsConnections + '"') else ""} \
      ~{true="--skipScan" false="" skipSkipScan}
  >>>
}