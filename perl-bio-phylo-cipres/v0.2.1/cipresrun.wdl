version 1.0

task Cipresrun {
  input {
    String? ciCiPresRun
  }
  command <<<
    cipresrun \
      ~{ciCiPresRun}
  >>>
}