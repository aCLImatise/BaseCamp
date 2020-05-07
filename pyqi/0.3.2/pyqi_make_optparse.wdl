version 1.0

task PyqiMakeOptparse {
  input {
    String commandCommand
    String commandCommandModule
    String outputOutputFp
  }
  command <<<
    pyqi make-optparse \
      ~{if defined(commandCommand) then ("--command " +  '"' + commandCommand + '"') else ""} \
      ~{if defined(commandCommandModule) then ("--command-module " +  '"' + commandCommandModule + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}