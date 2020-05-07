version 1.0

task Lusstr {
  input {
    String? subSubCmd
  }
  command <<<
    lusstr \
      ~{subSubCmd}
  >>>
}