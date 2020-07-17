version 1.0

task BehstDownloadData.sh {
  input {
    String? mode
    Boolean? parents
    Boolean? verbose
    Boolean? set_selinux_context
    Boolean? context
    Boolean? force_symbolic_links
    Boolean? use_physical_structure
    Boolean? p_option_supplied
    Boolean? at
    String mkdir
    String? option
  }
  command <<<
    behst-download-data.sh \
      ~{mkdir} \
      ~{option} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--parents" false="" parents} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-Z" false="" set_selinux_context} \
      ~{true="--context" false="" context} \
      ~{true="-L" false="" force_symbolic_links} \
      ~{true="-P" false="" use_physical_structure} \
      ~{true="-e" false="" p_option_supplied} \
      ~{true="-@" false="" at}
  >>>
  parameter_meta {
    mode: "set file mode (as in chmod), not a=rwx - umask"
    parents: "no error if existing, make parent directories as needed"
    verbose: "print a message for each created directory"
    set_selinux_context: "set SELinux security context of each created directory to the default type"
    context: "[=CTX]  like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX"
    force_symbolic_links: "force symbolic links to be followed: resolve symbolic links in DIR after processing instances of `..'"
    use_physical_structure: "use the physical directory structure without following symbolic links: resolve symbolic links in DIR before processing instances of `..'"
    p_option_supplied: "if the -P option is supplied, and the current working directory cannot be determined successfully, exit with a non-zero status"
    at: "on systems that support it, present a file with extended attributes as a directory containing the file attributes"
    mkdir: ""
    option: ""
  }
}