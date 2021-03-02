version 1.0

task DrivePull {
  input {
    Boolean? all
    String? decryption_password
    Int? depth
    Boolean? desktop_links
    Boolean? directories
    String? exclude_ops
    Boolean? explicitly_export
    String? export
    Directory? exports_dir
    Boolean? files
    Boolean? fix_clashes
    Boolean? force
    Boolean? id
    Boolean? ignore_checksum
    Boolean? ignore_conflict
    Boolean? ignore_name_clashes
    Boolean? matches
    Boolean? no_clobber
    Boolean? no_prompt
    Boolean? piped
    Boolean? quiet
    Boolean? recursive
    Int? retry_count
    Boolean? same_exports_dir
    String? skip_mime
    Boolean? starred
    Boolean? trashed
    Boolean? verbose
  }
  command <<<
    drive pull \
      ~{if (all) then "-all" else ""} \
      ~{if defined(decryption_password) then ("-decryption-password " +  '"' + decryption_password + '"') else ""} \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (desktop_links) then "-desktop-links" else ""} \
      ~{if (directories) then "-directories" else ""} \
      ~{if defined(exclude_ops) then ("-exclude-ops " +  '"' + exclude_ops + '"') else ""} \
      ~{if (explicitly_export) then "-explicitly-export" else ""} \
      ~{if defined(export) then ("-export " +  '"' + export + '"') else ""} \
      ~{if defined(exports_dir) then ("-exports-dir " +  '"' + exports_dir + '"') else ""} \
      ~{if (files) then "-files" else ""} \
      ~{if (fix_clashes) then "-fix-clashes" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (ignore_checksum) then "-ignore-checksum" else ""} \
      ~{if (ignore_conflict) then "-ignore-conflict" else ""} \
      ~{if (ignore_name_clashes) then "-ignore-name-clashes" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (no_clobber) then "-no-clobber" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (piped) then "-piped" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""} \
      ~{if defined(retry_count) then ("-retry-count " +  '"' + retry_count + '"') else ""} \
      ~{if (same_exports_dir) then "-same-exports-dir" else ""} \
      ~{if defined(skip_mime) then ("-skip-mime " +  '"' + skip_mime + '"') else ""} \
      ~{if (starred) then "-starred" else ""} \
      ~{if (trashed) then "-trashed" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "all the starred files"
    decryption_password: "decryption password"
    depth: "max traversal depth (default -1)"
    desktop_links: "allows docs + sheets to be pulled as .desktop files or URL linked files (default true)"
    directories: "pull only directories"
    exclude_ops: "exclude operations"
    explicitly_export: "explicitly pull exports"
    export: "comma separated list of formats to export your docs + sheets files"
    exports_dir: "directory to place exports"
    files: "pull only files"
    fix_clashes: "fix clashes by renaming or trashing files"
    force: "forces a pull even if no changes present"
    id: "pull by id instead of path"
    ignore_checksum: "avoids computation of checksums as a final check."
    ignore_conflict: "turns off the conflict resolution safety"
    ignore_name_clashes: "ignore name clashes"
    matches: "search by prefix"
    no_clobber: "prevents overwriting of old content"
    no_prompt: "shows no prompt before applying the pull action"
    piped: "get content in from standard input (stdin)"
    quiet: "if set, do not log anything but errors"
    recursive: "performs the pull action recursively (default true)"
    retry_count: "max number of retries for exponential backoff (default 20)"
    same_exports_dir: "exports are put in the same directory"
    skip_mime: "skip elements with mimeTypes derived from these extensions"
    starred: "operate only on starred files"
    trashed: "pull content in the trash"
    verbose: "show step by step information verbosely\\n"
  }
  output {
    File out_stdout = stdout()
  }
}