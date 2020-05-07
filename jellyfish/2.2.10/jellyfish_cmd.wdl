version 1.0

task JellyfishCmd {
  input {
    String? argArg
  }
  command <<<
    jellyfish cmd \
      ~{argArg}
  >>>
}