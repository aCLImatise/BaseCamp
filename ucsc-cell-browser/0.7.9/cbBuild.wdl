version 1.0

task CbBuild {
  input {
    Boolean inInIt
    Boolean debugDebug
    String inInConf
    String outdirOutdir
    String portPort
    Boolean recursiveRecursive
    String redoRedo
  }
  command <<<
    cbBuild \
      ~{true="--init" false="" inInIt} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(inInConf) then ("--inConf " +  '"' + inInConf + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{if defined(redoRedo) then ("--redo " +  '"' + redoRedo + '"') else ""}
  >>>
}