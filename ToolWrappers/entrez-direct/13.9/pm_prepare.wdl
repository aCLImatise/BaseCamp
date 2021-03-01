version 1.0

task Pmprepare {
  input {
    File? mode
    Boolean? parents
    Boolean? verbose
    Boolean? set_security_context
    Boolean? context
    String mkdir
  }
  command <<<
    pm_prepare \
      ~{mkdir} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (parents) then "--parents" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (set_security_context) then "-Z" else ""} \
      ~{if (context) then "--context" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    mode: "set file mode (as in chmod), not a=rwx - umask"
    parents: "no error if existing, make parent directories as needed"
    verbose: "print a message for each created directory"
    set_security_context: "set SELinux security context of each created directory\\nto the default type"
    context: "[=CTX]  like -Z, or if CTX is specified then set the SELinux\\nor SMACK security context to CTX"
    mkdir: ""
  }
  output {
    File out_stdout = stdout()
  }
}