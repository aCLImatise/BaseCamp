version 1.0

task CbUpgrade {
  input {
    Boolean debugDebug
    String outdirOutdir
    String portPort
    Boolean codeCode
    Boolean devDev
  }
  command <<<
    cbUpgrade \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{true="--code" false="" codeCode} \
      ~{true="--dev" false="" devDev}
  >>>
}