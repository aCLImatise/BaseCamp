version 1.0

task PyqiMakeBashCompletion {
  input {
    String commandCommandConfigModule
    String driverDriverName
    String outputOutputFp
  }
  command <<<
    pyqi make-bash-completion \
      ~{if defined(commandCommandConfigModule) then ("--command-config-module " +  '"' + commandCommandConfigModule + '"') else ""} \
      ~{if defined(driverDriverName) then ("--driver-name " +  '"' + driverDriverName + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}