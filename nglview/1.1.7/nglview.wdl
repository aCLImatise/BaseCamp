version 1.0

task Nglview {
  input {
    String crdCrd
    String browserBrowser
    String jJExe
    String notebookNotebookName
    String portPort
    Boolean remoteRemote
    Boolean cleanClean
    Boolean autoAuto
    Boolean symlinkSymlink
    String? commandCommand
    String? tTRaj
  }
  command <<<
    nglview \
      ~{commandCommand} \
      ~{if defined(crdCrd) then ("--crd " +  '"' + crdCrd + '"') else ""} \
      ~{if defined(browserBrowser) then ("--browser " +  '"' + browserBrowser + '"') else ""} \
      ~{if defined(jJExe) then ("--jexe " +  '"' + jJExe + '"') else ""} \
      ~{if defined(notebookNotebookName) then ("--notebook-name " +  '"' + notebookNotebookName + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{true="--remote" false="" remoteRemote} \
      ~{true="--clean" false="" cleanClean} \
      ~{true="--auto" false="" autoAuto} \
      ~{true="--symlink" false="" symlinkSymlink} \
      ~{tTRaj}
  >>>
}