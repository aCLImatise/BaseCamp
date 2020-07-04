version 1.0

task Coreprocess.pl {
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
    String? parents
    Boolean? recursive
    Boolean? ref_link
    Boolean? remove_destination
    String? sparse
    Boolean? strip_trailing_slashes
    String? symbolic_link
    String? suffix
    Directory? target_directory
    String? no_target_directory
    String? update
    String? verbose
    String? one_file_system
    Boolean? set_selinux_context
    Boolean? context
    String cp
    String? option
  }
  command <<<
    coreprocess.pl \
      ~{cp} \
      ~{option} \
      ~{true="--archive" false="" archive} \
      ~{true="--attributes-only" false="" attributes_only} \
      ~{true="--backup" false="" backup} \
      ~{true="-b" false="" _backup_accept} \
      ~{true="--copy-contents" false="" copy_contents} \
      ~{true="-d" false="" same__nodereference} \
      ~{true="--force" false="" force} \
      ~{true="--interactive" false="" interactive} \
      ~{true="-H" false="" follow_commandline_links} \
      ~{true="--link" false="" link} \
      ~{true="--dereference" false="" dereference} \
      ~{true="--no-clobber" false="" no_clobber} \
      ~{true="--no-dereference" false="" no_dereference} \
      ~{true="-p" false="" same__preservemodeownershiptimestamps} \
      ~{true="--preserve" false="" preserve} \
      ~{if defined(no_preserve) then ("--no-preserve " +  '"' + no_preserve + '"') else ""} \
      ~{if defined(parents) then ("--parents " +  '"' + parents + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--reflink" false="" ref_link} \
      ~{true="--remove-destination" false="" remove_destination} \
      ~{if defined(sparse) then ("--sparse " +  '"' + sparse + '"') else ""} \
      ~{true="--strip-trailing-slashes" false="" strip_trailing_slashes} \
      ~{if defined(symbolic_link) then ("--symbolic-link " +  '"' + symbolic_link + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(target_directory) then ("--target-directory " +  '"' + target_directory + '"') else ""} \
      ~{if defined(no_target_directory) then ("--no-target-directory " +  '"' + no_target_directory + '"') else ""} \
      ~{if defined(update) then ("--update " +  '"' + update + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(one_file_system) then ("--one-file-system " +  '"' + one_file_system + '"') else ""} \
      ~{true="-Z" false="" set_selinux_context} \
      ~{true="--context" false="" context}
  >>>
  parameter_meta {
    archive: "same as -dR --preserve=all"
    attributes_only: "don't copy the file data, just the attributes"
    backup: "[=CONTROL]       make a backup of each existing destination file"
    _backup_accept: "like --backup but does not accept an argument"
    copy_contents: "copy contents of special files when recursive"
    same__nodereference: "same as --no-dereference --preserve=links"
    force: "if an existing destination file cannot be opened, remove it and try again (this option is ignored when the -n option is also used)"
    interactive: "prompt before overwrite (overrides a previous -n option)"
    follow_commandline_links: "follow command-line symbolic links in SOURCE"
    link: "hard link files instead of copying"
    dereference: "always follow symbolic links in SOURCE"
    no_clobber: "do not overwrite an existing file (overrides a previous -i option)"
    no_dereference: "never follow symbolic links in SOURCE"
    same__preservemodeownershiptimestamps: "same as --preserve=mode,ownership,timestamps"
    preserve: "[=ATTR_LIST]   preserve the specified attributes (default: mode,ownership,timestamps), if possible additional attributes: context, links, xattr, all"
    no_preserve: "don't preserve the specified attributes"
    parents: "full source file name under DIRECTORY"
    recursive: "copy directories recursively"
    ref_link: "[=WHEN]         control clone/CoW copies. See below"
    remove_destination: "remove each existing destination file before attempting to open it (contrast with --force)"
    sparse: "control creation of sparse files. See below"
    strip_trailing_slashes: "remove any trailing slashes from each SOURCE argument"
    symbolic_link: "symbolic links instead of copying"
    suffix: "override the usual backup suffix"
    target_directory: "copy all SOURCE arguments into DIRECTORY"
    no_target_directory: "DEST as a normal file"
    update: "only when the SOURCE file is newer than the destination file or when the destination file is missing"
    verbose: "what is being done"
    one_file_system: "on this file system"
    set_selinux_context: "set SELinux security context of destination file to default type"
    context: "[=CTX]          like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX"
    cp: ""
    option: ""
  }
}