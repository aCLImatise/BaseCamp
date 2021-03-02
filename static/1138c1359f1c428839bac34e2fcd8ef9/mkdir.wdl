version 1.0

task Mkdir {
  input {
    File? mode
    Boolean? parents
    Boolean? verbose
    Boolean? set_security_context
    Boolean? context
  }
  command <<<
    mkdir \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (parents) then "--parents" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (set_security_context) then "-Z" else ""} \
      ~{if (context) then "--context" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "set file mode (as in chmod), not a=rwx - umask"
    parents: "no error if existing, make parent directories as needed"
    verbose: "print a message for each created directory"
    set_security_context: "set SELinux security context of each created directory\\nto the default type"
    context: "[=CTX]  like -Z, or if CTX is specified then set the SELinux\\nor SMACK security context to CTX"
  }
  output {
    File out_stdout = stdout()
  }
}