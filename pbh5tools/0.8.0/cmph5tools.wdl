version 1.0

task Cmph5tools.pyValidate {
  input {
    String? inputInputCmph5
  }
  command <<<
    cmph5tools.py validate \
      ~{inputInputCmph5}
  >>>
}