version 1.0

task Sbpipe {
  input {
    String createCreateProject
    File simulateSimulate
    File parameterParameterScan1
    File parameterParameterScan2
    File parameterParameterEstimation
    Boolean licenseLicense
    Boolean noNoColor
    Boolean logoLogo
    Boolean quietQuiet
    String logLogLevel
    Boolean verboseVerbose
  }
  command <<<
    sbpipe \
      ~{if defined(createCreateProject) then ("--create-project " +  '"' + createCreateProject + '"') else ""} \
      ~{if defined(simulateSimulate) then ("--simulate " +  '"' + simulateSimulate + '"') else ""} \
      ~{if defined(parameterParameterScan1) then ("--parameter-scan1 " +  '"' + parameterParameterScan1 + '"') else ""} \
      ~{if defined(parameterParameterScan2) then ("--parameter-scan2 " +  '"' + parameterParameterScan2 + '"') else ""} \
      ~{if defined(parameterParameterEstimation) then ("--parameter-estimation " +  '"' + parameterParameterEstimation + '"') else ""} \
      ~{true="--license" false="" licenseLicense} \
      ~{true="--nocolor" false="" noNoColor} \
      ~{true="--logo" false="" logoLogo} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}