version 1.0

task UfastaCmd {
  input {
    String? argArg
  }
  command <<<
    ufasta cmd \
      ~{argArg}
  >>>
}