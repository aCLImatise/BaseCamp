version 1.0

task BcbioVmpyAwsIcel {
  input {
    String create
    String fs_spec
    String mount
    String unmount
    String stop
  }
  command <<<
    bcbio_vm_py aws icel \
      ~{create} \
      ~{fs_spec} \
      ~{mount} \
      ~{unmount} \
      ~{stop}
  >>>
  parameter_meta {
    create: "Create scratch filesystem using Intel Cloud Edition\\nfor Lustre"
    fs_spec: "Get the filesystem spec for a running filesystem"
    mount: "Mount Lustre filesystem on all cluster nodes"
    unmount: "Unmount Lustre filesystem on all cluster nodes"
    stop: "Stop the running Lustre filesystem and clean up\\nresources\\n"
  }
  output {
    File out_stdout = stdout()
  }
}