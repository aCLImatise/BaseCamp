version 1.0

task Syrupy.py {
  input {
    String pollPollPid
    String sshSsh
    String pollPollTopMemory
    String pollPollCommand
    Boolean iI
    Boolean syrupySyrupyInFront
    Boolean commandCommandInFront
    Boolean noNoCommandOutput
    Boolean flushFlushOutput
    Boolean noNoRawProcessLog
    Boolean showShowCommand
    String separatorSeparator
    Boolean noNoAlign
    Boolean noNoHeaders
    String? syrupySyrupyOptions
    String? commandCommand
    String? commandCommandOptions
    String? commandCommandArgs
  }
  command <<<
    syrupy.py \
      ~{syrupySyrupyOptions} \
      ~{if defined(pollPollPid) then ("--poll-pid " +  '"' + pollPollPid + '"') else ""} \
      ~{if defined(sshSsh) then ("--ssh " +  '"' + sshSsh + '"') else ""} \
      ~{if defined(pollPollTopMemory) then ("--poll-top-memory " +  '"' + pollPollTopMemory + '"') else ""} \
      ~{if defined(pollPollCommand) then ("--poll-command " +  '"' + pollPollCommand + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="--syrupy-in-front" false="" syrupySyrupyInFront} \
      ~{true="--command-in-front" false="" commandCommandInFront} \
      ~{true="--no-command-output" false="" noNoCommandOutput} \
      ~{true="--flush-output" false="" flushFlushOutput} \
      ~{true="--no-raw-process-log" false="" noNoRawProcessLog} \
      ~{true="--show-command" false="" showShowCommand} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{true="--no-align" false="" noNoAlign} \
      ~{true="--no-headers" false="" noNoHeaders} \
      ~{commandCommand} \
      ~{commandCommandOptions} \
      ~{commandCommandArgs}
  >>>
}