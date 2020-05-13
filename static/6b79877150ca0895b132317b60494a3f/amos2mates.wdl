version 1.0

task Amos2mates {
  input {
    String? extensionExtension
  }
  command <<<
    amos2mates \
      ~{extensionExtension}
  >>>
}