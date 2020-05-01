version 1.0

task ParaNodeStart {
  input {
    File logLog
    Boolean umaskUmask
    String randomRandomDelay
    String userUserPath
    Boolean sysSysPath
    String envEnv
    String hubHub
    Boolean rshRsh
    String? machineMachineList
  }
  command <<<
    paraNodeStart \
      ~{machineMachineList} \
      ~{if defined(logLog) then ("-log " +  '"' + logLog + '"') else ""} \
      ~{true="-umask" false="" umaskUmask} \
      ~{if defined(randomRandomDelay) then ("-randomDelay " +  '"' + randomRandomDelay + '"') else ""} \
      ~{if defined(userUserPath) then ("-userPath " +  '"' + userUserPath + '"') else ""} \
      ~{true="-sysPath" false="" sysSysPath} \
      ~{if defined(envEnv) then ("-env " +  '"' + envEnv + '"') else ""} \
      ~{if defined(hubHub) then ("-hub " +  '"' + hubHub + '"') else ""} \
      ~{true="-rsh" false="" rshRsh}
  >>>
}