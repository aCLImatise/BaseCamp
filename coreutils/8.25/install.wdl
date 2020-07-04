version 1.0

task Install {
  input {
    Boolean? strip
    String? strip_program
    String? suffix
    Directory? target_directory
    Boolean? no_target_directory
    Boolean? verbose
    Boolean? preserve_context
    Boolean? set_selinux_context
    Boolean? context
    String? option
  }
  command <<<
    install \
      ~{option} \
      ~{true="--strip" false="" strip} \
      ~{if defined(strip_program) then ("--strip-program " +  '"' + strip_program + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(target_directory) then ("--target-directory " +  '"' + target_directory + '"') else ""} \
      ~{true="--no-target-directory" false="" no_target_directory} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--preserve-context" false="" preserve_context} \
      ~{true="-Z" false="" set_selinux_context} \
      ~{true="--context" false="" context}
  >>>
  parameter_meta {
    strip: "strip symbol tables"
    strip_program: "program used to strip binaries"
    suffix: "override the usual backup suffix"
    target_directory: "copy all SOURCE arguments into DIRECTORY"
    no_target_directory: "treat DEST as a normal file"
    verbose: "print the name of each directory as it is created"
    preserve_context: "preserve SELinux security context"
    set_selinux_context: "set SELinux security context of destination file to default type"
    context: "[=CTX]     like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX"
    option: ""
  }
}