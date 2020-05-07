version 1.0

task DxGenerateDxapp {
  input {
    String targetTargetModule
    String targetTargetFunction
    String targetTargetExecutable
    String subcommandSubcommand
    String outputOutputFile
    Array[String]+ outputOutputParams
    String outputOutputParamRegexp
    Boolean nN
    String instanceInstanceType
    String timeoutTimeout
    String distributionDistribution
    String releaseRelease
  }
  command <<<
    dx-generate-dxapp \
      ~{if defined(targetTargetModule) then ("--target-module " +  '"' + targetTargetModule + '"') else ""} \
      ~{if defined(targetTargetFunction) then ("--target-function " +  '"' + targetTargetFunction + '"') else ""} \
      ~{if defined(targetTargetExecutable) then ("--target-executable " +  '"' + targetTargetExecutable + '"') else ""} \
      ~{if defined(subcommandSubcommand) then ("--subcommand " +  '"' + subcommandSubcommand + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputParams) then ("--output-params " +  '"' + outputOutputParams + '"') else ""} \
      ~{if defined(outputOutputParamRegexp) then ("--output-param-regexp " +  '"' + outputOutputParamRegexp + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{if defined(instanceInstanceType) then ("--instance-type " +  '"' + instanceInstanceType + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(distributionDistribution) then ("--distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{if defined(releaseRelease) then ("--release " +  '"' + releaseRelease + '"') else ""}
  >>>
}