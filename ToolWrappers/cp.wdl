version 1.0

task Cp {
  input {
    Boolean? archive
    Boolean? attributes_only
    Boolean? backup
    Boolean? _backup_accept
    Boolean? copy_contents
    Boolean? same__nodereference
    Boolean? force
    Boolean? interactive
    Boolean? follow_commandline_links
    Boolean? link
    Boolean? dereference
    Boolean? no_clobber
    Boolean? no_dereference
    Boolean? same__preservemodeownershiptimestamps
    Boolean? preserve
    String? no_preserve
    Boolean? parents
    Boolean? recursive
    Boolean? ref_link
    Boolean? remove_destination
    String? sparse
    Boolean? strip_trailing_slashes
    String? suffix
    Directory? target_directory
    Boolean? no_target_directory
    Boolean? update
    Boolean? verbose
    Boolean? one_file_system
    Boolean? set_selinux_context
    Boolean? context
    String argument
  }
  command <<<
    cp \
      ~{argument} \
      ~{if (archive) then "--archive" else ""} \
      ~{if (attributes_only) then "--attributes-only" else ""} \
      ~{if (backup) then "--backup" else ""} \
      ~{if (_backup_accept) then "-b" else ""} \
      ~{if (copy_contents) then "--copy-contents" else ""} \
      ~{if (same__nodereference) then "-d" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (follow_commandline_links) then "-H" else ""} \
      ~{if (link) then "--link" else ""} \
      ~{if (dereference) then "--dereference" else ""} \
      ~{if (no_clobber) then "--no-clobber" else ""} \
      ~{if (no_dereference) then "--no-dereference" else ""} \
      ~{if (same__preservemodeownershiptimestamps) then "-p" else ""} \
      ~{if (preserve) then "--preserve" else ""} \
      ~{if defined(no_preserve) then ("--no-preserve " +  '"' + no_preserve + '"') else ""} \
      ~{if (parents) then "--parents" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (ref_link) then "--reflink" else ""} \
      ~{if (remove_destination) then "--remove-destination" else ""} \
      ~{if defined(sparse) then ("--sparse " +  '"' + sparse + '"') else ""} \
      ~{if (strip_trailing_slashes) then "--strip-trailing-slashes" else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(target_directory) then ("--target-directory " +  '"' + target_directory + '"') else ""} \
      ~{if (no_target_directory) then "--no-target-directory" else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (one_file_system) then "--one-file-system" else ""} \
      ~{if (set_selinux_context) then "-Z" else ""} \
      ~{if (context) then "--context" else ""}
  >>>
  parameter_meta {
    archive: "same as -dR --preserve=all"
    attributes_only: "don't copy the file data, just the attributes"
    backup: "[=CONTROL]       make a backup of each existing destination file"
    _backup_accept: "like --backup but does not accept an argument"
    copy_contents: "copy contents of special files when recursive"
    same__nodereference: "same as --no-dereference --preserve=links"
    force: "if an existing destination file cannot be\\nopened, remove it and try again (this option\\nis ignored when the -n option is also used)"
    interactive: "prompt before overwrite (overrides a previous -n\\noption)"
    follow_commandline_links: "follow command-line symbolic links in SOURCE"
    link: "hard link files instead of copying"
    dereference: "always follow symbolic links in SOURCE"
    no_clobber: "do not overwrite an existing file (overrides\\na previous -i option)"
    no_dereference: "never follow symbolic links in SOURCE"
    same__preservemodeownershiptimestamps: "same as --preserve=mode,ownership,timestamps"
    preserve: "[=ATTR_LIST]   preserve the specified attributes (default:\\nmode,ownership,timestamps), if possible\\nadditional attributes: context, links, xattr,\\nall"
    no_preserve: "don't preserve the specified attributes"
    parents: "use full source file name under DIRECTORY"
    recursive: "copy directories recursively"
    ref_link: "[=WHEN]         control clone/CoW copies. See below"
    remove_destination: "remove each existing destination file before\\nattempting to open it (contrast with --force)"
    sparse: "control creation of sparse files. See below"
    strip_trailing_slashes: "remove any trailing slashes from each SOURCE"
    suffix: "override the usual backup suffix"
    target_directory: "copy all SOURCE arguments into DIRECTORY"
    no_target_directory: "treat DEST as a normal file"
    update: "copy only when the SOURCE file is newer\\nthan the destination file or when the\\ndestination file is missing"
    verbose: "explain what is being done"
    one_file_system: "stay on this file system"
    set_selinux_context: "set SELinux security context of destination\\nfile to default type"
    context: "[=CTX]          like -Z, or if CTX is specified then set the\\nSELinux or SMACK security context to CTX"
    argument: "-s, --symbolic-link          make symbolic links instead of copying"
  }
  output {
    File out_stdout = stdout()
  }
}