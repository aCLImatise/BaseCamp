version 1.0

task Ant {
  input {
    Boolean noNoConfig
    Boolean useUseJikes
    Boolean execExecDebug
    Boolean projectProjectHelp
    Boolean versionVersion
    Boolean diagnosticsDiagnostics
    Boolean quietQuiet
    Boolean silentSilent
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean emacsEmacs
    File libLib
    File logLogFile
    Boolean lL
    String loggerLogger
    String listenerListener
    Boolean noNoInput
    File buildfileBuildfile
    Boolean fileFile
    Boolean fF
    Boolean dD
    Boolean keepKeepGoing
    String propertyPropertyFile
    String inputInputHandler
    File findFind
    Boolean sS
    Boolean niceNice
    Boolean noNoUserLib
    Boolean noNoClasspath
    Boolean autoAutoProxy
    String mainMain
  }
  command <<<
    ant \
      ~{true="--noconfig" false="" noNoConfig} \
      ~{true="--usejikes" false="" useUseJikes} \
      ~{true="--execdebug" false="" execExecDebug} \
      ~{true="-projecthelp" false="" projectProjectHelp} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-diagnostics" false="" diagnosticsDiagnostics} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-silent" false="" silentSilent} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-debug" false="" debugDebug} \
      ~{true="-emacs" false="" emacsEmacs} \
      ~{if defined(libLib) then ("-lib " +  '"' + libLib + '"') else ""} \
      ~{if defined(logLogFile) then ("-logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(loggerLogger) then ("-logger " +  '"' + loggerLogger + '"') else ""} \
      ~{if defined(listenerListener) then ("-listener " +  '"' + listenerListener + '"') else ""} \
      ~{true="-noinput" false="" noNoInput} \
      ~{if defined(buildfileBuildfile) then ("-buildfile " +  '"' + buildfileBuildfile + '"') else ""} \
      ~{true="-file" false="" fileFile} \
      ~{true="-f" false="" fF} \
      ~{true="-D" false="" dD} \
      ~{true="-keep-going" false="" keepKeepGoing} \
      ~{if defined(propertyPropertyFile) then ("-propertyfile " +  '"' + propertyPropertyFile + '"') else ""} \
      ~{if defined(inputInputHandler) then ("-inputhandler " +  '"' + inputInputHandler + '"') else ""} \
      ~{if defined(findFind) then ("-find " +  '"' + findFind + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-nice" false="" niceNice} \
      ~{true="-nouserlib" false="" noNoUserLib} \
      ~{true="-noclasspath" false="" noNoClasspath} \
      ~{true="-autoproxy" false="" autoAutoProxy} \
      ~{if defined(mainMain) then ("-main " +  '"' + mainMain + '"') else ""}
  >>>
}