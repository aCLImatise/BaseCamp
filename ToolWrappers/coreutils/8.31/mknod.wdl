version 1.0

task Mknod {
  input {
    File? mode
    Boolean? set_security_context
    Boolean? context
  }
  command <<<
    mknod \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (set_security_context) then "-Z" else ""} \
      ~{if (context) then "--context" else ""}
  >>>
  parameter_meta {
    mode: "set file permission bits to MODE, not a=rw - umask"
    set_security_context: "set the SELinux security context to default type"
    context: "[=CTX]  like -Z, or if CTX is specified then set the SELinux\\nor SMACK security context to CTX"
  }
  output {
    File out_stdout = stdout()
  }
}