version 1.0

task DriveStar {
  input {
    Boolean idId
    Boolean noNoPrompt
    Boolean quietQuiet
  }
  command <<<
    drive star \
      ~{true="-id" false="" idId} \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}