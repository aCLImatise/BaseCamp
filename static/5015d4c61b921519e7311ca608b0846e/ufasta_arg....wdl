version 1.0

task UfastaArg... {
  input {
    String? cmdCmd
    String? argArg
  }
  command <<<
    ufasta arg... \
      ~{cmdCmd} \
      ~{argArg}
  >>>
}