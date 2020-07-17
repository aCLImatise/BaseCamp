version 1.0

task Mkdir {
  input {
    String? mode
    Boolean? parents
    Boolean? verbose
    Boolean? set_selinux_context
    Boolean? context
    String? option
  }
  command <<<
    mkdir \
      ~{option} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--parents" false="" parents} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-Z" false="" set_selinux_context} \
      ~{true="--context" false="" context}
  >>>
  parameter_meta {
    mode: "set file mode (as in chmod), not a=rwx - umask"
    parents: "no error if existing, make parent directories as needed"
    verbose: "print a message for each created directory"
    set_selinux_context: "set SELinux security context of each created directory to the default type"
    context: "[=CTX]  like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX"
    option: ""
  }
}