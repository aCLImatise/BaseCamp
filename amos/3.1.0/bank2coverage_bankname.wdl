version 1.0

task Bank2coverageBankname {
  input {
    String? outOutPrefix
  }
  command <<<
    bank2coverage bankname \
      ~{outOutPrefix}
  >>>
}