version 1.0

task Ln {
  input {
    Boolean? backup
    Boolean? _backup_accept
    Boolean? directory
    Boolean? force
    Boolean? interactive
    Boolean? logical
    Boolean? no_dereference
    Boolean? physical
    Boolean? relative
    Boolean? symbolic
    String? suffix
    Directory? target_directory
    Boolean? no_target_directory
    Boolean? verbose
  }
  command <<<
    ln \
      ~{if (backup) then "--backup" else ""} \
      ~{if (_backup_accept) then "-b" else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (logical) then "--logical" else ""} \
      ~{if (no_dereference) then "--no-dereference" else ""} \
      ~{if (physical) then "--physical" else ""} \
      ~{if (relative) then "--relative" else ""} \
      ~{if (symbolic) then "--symbolic" else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(target_directory) then ("--target-directory " +  '"' + target_directory + '"') else ""} \
      ~{if (no_target_directory) then "--no-target-directory" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    backup: "[=CONTROL]      make a backup of each existing destination file"
    _backup_accept: "like --backup but does not accept an argument"
    directory: "allow the superuser to attempt to hard link\\ndirectories (note: will probably fail due to\\nsystem restrictions, even for the superuser)"
    force: "remove existing destination files"
    interactive: "prompt whether to remove destinations"
    logical: "dereference TARGETs that are symbolic links"
    no_dereference: "treat LINK_NAME as a normal file if\\nit is a symbolic link to a directory"
    physical: "make hard links directly to symbolic links"
    relative: "create symbolic links relative to link location"
    symbolic: "make symbolic links instead of hard links"
    suffix: "override the usual backup suffix"
    target_directory: "specify the DIRECTORY in which to create\\nthe links"
    no_target_directory: "treat LINK_NAME as a normal file always"
    verbose: "print name of each linked file"
  }
  output {
    File out_stdout = stdout()
  }
}