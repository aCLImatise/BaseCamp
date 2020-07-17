version 1.0

task Updatepaths.pl {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? dry_run
    String? paths
    String? backup
    String? database
  }
  command <<<
    updatepaths.pl \
      ~{true="--man" false="" man} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--dry-run" false="" dry_run} \
      ~{if defined(paths) then ("--paths " +  '"' + paths + '"') else ""} \
      ~{if defined(backup) then ("--backup " +  '"' + backup + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""}
  >>>
  parameter_meta {
    man: "Display full documentation and exit"
    verbose: "Enable verbose output "
    dry_run: "Don't actually update any paths"
    paths: "List of directory paths to search for files"
    backup: "Backup existing file with extension <ext>"
    database: "Path to database file"
  }
}