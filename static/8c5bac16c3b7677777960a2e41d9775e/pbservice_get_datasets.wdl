version 1.0

task PbserviceGetDatasets {
  input {
    String hostHost
    String portPort
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Int maxMaxItems
    String datasetDatasetType
  }
  command <<<
    pbservice get-datasets \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(maxMaxItems) then ("--max-items " +  '"' + maxMaxItems + '"') else ""} \
      ~{if defined(datasetDatasetType) then ("--dataset-type " +  '"' + datasetDatasetType + '"') else ""}
  >>>
}