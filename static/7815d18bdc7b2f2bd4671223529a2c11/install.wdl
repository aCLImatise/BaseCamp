version 1.0

task Install {
  input {
    Boolean? backup
    Boolean? _backup_accept
    Boolean? ignored
    Boolean? compare
    Boolean? directory
    Boolean? create_leading_components
    String? group
    String? mode
    String? owner
    Boolean? preserve_timestamps
    Boolean? strip
    String? strip_program
    String? suffix
    Directory? target_directory
    Boolean? no_target_directory
    Boolean? verbose
    Boolean? preserve_context
    Boolean? set_security_context
    Boolean? context
  }
  command <<<
    install \
      ~{if (backup) then "--backup" else ""} \
      ~{if (_backup_accept) then "-b" else ""} \
      ~{if (ignored) then "-c" else ""} \
      ~{if (compare) then "--compare" else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (create_leading_components) then "-D" else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if (preserve_timestamps) then "--preserve-timestamps" else ""} \
      ~{if (strip) then "--strip" else ""} \
      ~{if defined(strip_program) then ("--strip-program " +  '"' + strip_program + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(target_directory) then ("--target-directory " +  '"' + target_directory + '"') else ""} \
      ~{if (no_target_directory) then "--no-target-directory" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (preserve_context) then "--preserve-context" else ""} \
      ~{if (set_security_context) then "-Z" else ""} \
      ~{if (context) then "--context" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    backup: "[=CONTROL]  make a backup of each existing destination file"
    _backup_accept: "like --backup but does not accept an argument"
    ignored: "(ignored)"
    compare: "compare each pair of source and destination files, and\\nin some cases, do not modify the destination at all"
    directory: "treat all arguments as directory names; create all\\ncomponents of the specified directories"
    create_leading_components: "create all leading components of DEST except the last,\\nor all components of --target-directory,\\nthen copy SOURCE to DEST"
    group: "set group ownership, instead of process' current group"
    mode: "set permission mode (as in chmod), instead of rwxr-xr-x"
    owner: "set ownership (super-user only)"
    preserve_timestamps: "apply access/modification times of SOURCE files\\nto corresponding destination files"
    strip: "strip symbol tables"
    strip_program: "program used to strip binaries"
    suffix: "override the usual backup suffix"
    target_directory: "copy all SOURCE arguments into DIRECTORY"
    no_target_directory: "treat DEST as a normal file"
    verbose: "print the name of each directory as it is created"
    preserve_context: "preserve SELinux security context"
    set_security_context: "set SELinux security context of destination\\nfile and each created directory to default type"
    context: "[=CTX]     like -Z, or if CTX is specified then set the\\nSELinux or SMACK security context to CTX"
  }
  output {
    File out_stdout = stdout()
  }
}