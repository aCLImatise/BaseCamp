version 1.0

task DriveUnstar {
  input {
    Boolean idId
    Boolean noNoPrompt
    Boolean quietQuiet
  }
  command <<<
    drive unstar \
      ~{true="-id" false="" idId} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}