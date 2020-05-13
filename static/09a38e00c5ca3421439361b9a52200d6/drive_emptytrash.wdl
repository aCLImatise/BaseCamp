version 1.0

task DriveEmptytrash {
  input {
    Boolean noNoPrompt
    Boolean quietQuiet
  }
  command <<<
    drive emptytrash \
      ~{true="-no-prompt" false="" noNoPrompt} \
      ~{true="-quiet" false="" quietQuiet}
  >>>
}