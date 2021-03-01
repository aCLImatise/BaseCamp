version 1.0

task Mv {
  input {
    Boolean? backup
    Boolean? _backup_accept
    Boolean? force
    Boolean? interactive
    Boolean? no_clobber
    Boolean? strip_trailing_slashes
    Directory? target_directory
    Boolean? no_target_directory
    Boolean? update
    Boolean? verbose
    Boolean? context
    String argument
  }
  command <<<
    mv \
      ~{argument} \
      ~{if (backup) then "--backup" else ""} \
      ~{if (_backup_accept) then "-b" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (no_clobber) then "--no-clobber" else ""} \
      ~{if (strip_trailing_slashes) then "--strip-trailing-slashes" else ""} \
      ~{if defined(target_directory) then ("--target-directory " +  '"' + target_directory + '"') else ""} \
      ~{if (no_target_directory) then "--no-target-directory" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (context) then "--context" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    backup: "[=CONTROL]       make a backup of each existing destination file"
    _backup_accept: "like --backup but does not accept an argument"
    force: "do not prompt before overwriting"
    interactive: "prompt before overwrite"
    no_clobber: "do not overwrite an existing file"
    strip_trailing_slashes: "remove any trailing slashes from each SOURCE"
    target_directory: "move all SOURCE arguments into DIRECTORY"
    no_target_directory: "treat DEST as a normal file"
    update: "move only when the SOURCE file is newer\\nthan the destination file or when the\\ndestination file is missing"
    verbose: "explain what is being done"
    context: "set SELinux security context of destination\\nfile to default type"
    argument: "-S, --suffix=SUFFIX          override the usual backup suffix"
  }
  output {
    File out_stdout = stdout()
  }
}