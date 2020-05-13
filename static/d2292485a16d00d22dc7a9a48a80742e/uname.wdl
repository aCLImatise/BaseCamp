version 1.0

task Uname {
  input {
    String allAll
    String kernelKernelName
    String nodeNodeName
    String kernelKernelRelease
    Boolean kernelKernelVersion
    Boolean machineMachine
    Boolean processorProcessor
    Boolean hardwareHardwarePlatform
    Boolean operatingOperatingSystem
  }
  command <<<
    uname \
      ~{if defined(allAll) then ("--all " +  '"' + allAll + '"') else ""} \
      ~{if defined(kernelKernelName) then ("--kernel-name " +  '"' + kernelKernelName + '"') else ""} \
      ~{if defined(nodeNodeName) then ("--nodename " +  '"' + nodeNodeName + '"') else ""} \
      ~{if defined(kernelKernelRelease) then ("--kernel-release " +  '"' + kernelKernelRelease + '"') else ""} \
      ~{true="--kernel-version" false="" kernelKernelVersion} \
      ~{true="--machine" false="" machineMachine} \
      ~{true="--processor" false="" processorProcessor} \
      ~{true="--hardware-platform" false="" hardwareHardwarePlatform} \
      ~{true="--operating-system" false="" operatingOperatingSystem}
  >>>
}