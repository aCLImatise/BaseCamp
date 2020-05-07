version 1.0

task Bootstrap.py {
  input {
    String installationInstallationPath
    String prefixPrefixPath
    Boolean installInstallAll
    Boolean installInstallAllPy
    Boolean installInstallAllTools
    Boolean skipSkipDependencies
    Boolean skipSkipBlat
    Boolean yesYes
    Boolean listListDependencies
    Boolean buildBuild
    Boolean downloadDownload
    Boolean rootRootAptGetInstall
    Boolean extraExtra
    String localLocal
    String localLocalFusionCatcher
    String logLog
  }
  command <<<
    bootstrap.py \
      ~{if defined(installationInstallationPath) then ("--installation-path " +  '"' + installationInstallationPath + '"') else ""} \
      ~{if defined(prefixPrefixPath) then ("--prefix-path " +  '"' + prefixPrefixPath + '"') else ""} \
      ~{true="--install-all" false="" installInstallAll} \
      ~{true="--install-all-py" false="" installInstallAllPy} \
      ~{true="--install-all-tools" false="" installInstallAllTools} \
      ~{true="--skip-dependencies" false="" skipSkipDependencies} \
      ~{true="--skip-blat" false="" skipSkipBlat} \
      ~{true="--yes" false="" yesYes} \
      ~{true="--list-dependencies" false="" listListDependencies} \
      ~{true="--build" false="" buildBuild} \
      ~{true="--download" false="" downloadDownload} \
      ~{true="--root-apt-get-install" false="" rootRootAptGetInstall} \
      ~{true="--extra" false="" extraExtra} \
      ~{if defined(localLocal) then ("--local " +  '"' + localLocal + '"') else ""} \
      ~{if defined(localLocalFusionCatcher) then ("--local-fusioncatcher " +  '"' + localLocalFusionCatcher + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}