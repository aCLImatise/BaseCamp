version 1.0

task Mv {
  input {
    Boolean? backup
    Boolean? _backup_accept
    Boolean? force
    Boolean? interactive
    Boolean? no_clobber
    Boolean? strip_trailing_slashes
    String? suffix
    Directory? target_directory
    Boolean? no_target_directory
    Boolean? update
    Boolean? verbose
    Boolean? context
    String? option
  }
  command <<<
    mv \
      ~{option} \
      ~{true="--backup" false="" backup} \
      ~{true="-b" false="" _backup_accept} \
      ~{true="--force" false="" force} \
      ~{true="--interactive" false="" interactive} \
      ~{true="--no-clobber" false="" no_clobber} \
      ~{true="--strip-trailing-slashes" false="" strip_trailing_slashes} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(target_directory) then ("--target-directory " +  '"' + target_directory + '"') else ""} \
      ~{true="--no-target-directory" false="" no_target_directory} \
      ~{true="--update" false="" update} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--context" false="" context}
  >>>
  parameter_meta {
    backup: "[=CONTROL]       make a backup of each existing destination file"
    _backup_accept: "like --backup but does not accept an argument"
    force: "do not prompt before overwriting"
    interactive: "prompt before overwrite"
    no_clobber: "do not overwrite an existing file"
    strip_trailing_slashes: "remove any trailing slashes from each SOURCE argument"
    suffix: "override the usual backup suffix"
    target_directory: "move all SOURCE arguments into DIRECTORY"
    no_target_directory: "treat DEST as a normal file"
    update: "move only when the SOURCE file is newer than the destination file or when the destination file is missing"
    verbose: "explain what is being done"
    context: "set SELinux security context of destination file to default type"
    option: ""
  }
}