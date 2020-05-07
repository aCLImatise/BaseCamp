version 1.0

task Pyega3 {
  input {
    Boolean debugDebug
    String configConfigFile
    String serverServerFile
    String connectionsConnections
    Boolean testTest
  }
  command <<<
    pyega3 \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(configConfigFile) then ("--config-file " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(serverServerFile) then ("--server-file " +  '"' + serverServerFile + '"') else ""} \
      ~{if defined(connectionsConnections) then ("--connections " +  '"' + connectionsConnections + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}