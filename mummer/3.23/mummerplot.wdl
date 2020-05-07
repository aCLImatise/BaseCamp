version 1.0

task Mummerplot {
  input {
    String? matchMatchFile
  }
  command <<<
    mummerplot \
      ~{matchMatchFile}
  >>>
}