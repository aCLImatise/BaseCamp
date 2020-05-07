version 1.0

task JellyfishArg... {
  input {
    String? cmdCmd
    String? argArg
  }
  command <<<
    jellyfish arg... \
      ~{cmdCmd} \
      ~{argArg}
  >>>
}