version 1.0

task KatJellyfish {
  input {
    String? jellyfishJellyfish
    String? cmdCmd
    String? argArg
  }
  command <<<
    kat_jellyfish \
      ~{jellyfishJellyfish} \
      ~{cmdCmd} \
      ~{argArg}
  >>>
}