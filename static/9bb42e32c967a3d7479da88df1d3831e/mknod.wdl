version 1.0

task Mknod {
  input {
    String? mode
    Boolean? set_selinux_context
    Boolean? context
    String? option
  }
  command <<<
    mknod \
      ~{option} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="-Z" false="" set_selinux_context} \
      ~{true="--context" false="" context}
  >>>
  parameter_meta {
    mode: "set file permission bits to MODE, not a=rw - umask"
    set_selinux_context: "set the SELinux security context to default type"
    context: "[=CTX]  like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX"
    option: ""
  }
}