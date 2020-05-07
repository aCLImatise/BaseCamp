version 1.0

task PyqiMakeCommand {
  input {
    String nameName
    String outputOutputFp
  }
  command <<<
    pyqi make-command \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}