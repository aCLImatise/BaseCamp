version 1.0

task AdamR {
  input {
    String masterMaster
    String deployDeployMode
    String classClass
    String nameName
    String jarsJars
    Boolean packagesPackages
    Boolean excludeExcludePackages
    Boolean repositoriesRepositories
    String pyPyFiles
    File filesFiles
    String confConf
    File propertiesPropertiesFile
    String driverDriverMemory
    Boolean driverDriverJavaOptions
    Boolean driverDriverLibraryPath
    Boolean driverDriverClassPath
    String executorExecutorMemory
    String proxyProxyUser
    Boolean verboseVerbose
    String driverDriverCores
    Boolean superviseSupervise
    String killKill
    String statusStatus
    String totalTotalExecutorCores
    String executorExecutorCores
    String queueQueue
    String numNumExecutors
    String archivesArchives
    String principalPrincipal
    String keytabKeytab
  }
  command <<<
    adamR \
      ~{if defined(masterMaster) then ("--master " +  '"' + masterMaster + '"') else ""} \
      ~{if defined(deployDeployMode) then ("--deploy-mode " +  '"' + deployDeployMode + '"') else ""} \
      ~{if defined(classClass) then ("--class " +  '"' + classClass + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(jarsJars) then ("--jars " +  '"' + jarsJars + '"') else ""} \
      ~{true="--packages" false="" packagesPackages} \
      ~{true="--exclude-packages" false="" excludeExcludePackages} \
      ~{true="--repositories" false="" repositoriesRepositories} \
      ~{if defined(pyPyFiles) then ("--py-files " +  '"' + pyPyFiles + '"') else ""} \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(propertiesPropertiesFile) then ("--properties-file " +  '"' + propertiesPropertiesFile + '"') else ""} \
      ~{if defined(driverDriverMemory) then ("--driver-memory " +  '"' + driverDriverMemory + '"') else ""} \
      ~{true="--driver-java-options" false="" driverDriverJavaOptions} \
      ~{true="--driver-library-path" false="" driverDriverLibraryPath} \
      ~{true="--driver-class-path" false="" driverDriverClassPath} \
      ~{if defined(executorExecutorMemory) then ("--executor-memory " +  '"' + executorExecutorMemory + '"') else ""} \
      ~{if defined(proxyProxyUser) then ("--proxy-user " +  '"' + proxyProxyUser + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(driverDriverCores) then ("--driver-cores " +  '"' + driverDriverCores + '"') else ""} \
      ~{true="--supervise" false="" superviseSupervise} \
      ~{if defined(killKill) then ("--kill " +  '"' + killKill + '"') else ""} \
      ~{if defined(statusStatus) then ("--status " +  '"' + statusStatus + '"') else ""} \
      ~{if defined(totalTotalExecutorCores) then ("--total-executor-cores " +  '"' + totalTotalExecutorCores + '"') else ""} \
      ~{if defined(executorExecutorCores) then ("--executor-cores " +  '"' + executorExecutorCores + '"') else ""} \
      ~{if defined(queueQueue) then ("--queue " +  '"' + queueQueue + '"') else ""} \
      ~{if defined(numNumExecutors) then ("--num-executors " +  '"' + numNumExecutors + '"') else ""} \
      ~{if defined(archivesArchives) then ("--archives " +  '"' + archivesArchives + '"') else ""} \
      ~{if defined(principalPrincipal) then ("--principal " +  '"' + principalPrincipal + '"') else ""} \
      ~{if defined(keytabKeytab) then ("--keytab " +  '"' + keytabKeytab + '"') else ""}
  >>>
}