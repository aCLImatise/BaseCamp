version 1.0

task DrivePush {
  input {
    File? coerced_mime
    Boolean? convert
    Int? depth
    String? destination
    Boolean? directories
    String? encryption_password
    String? exclude_ops
    Boolean? files
    Boolean? fix_clashes
    Boolean? force
    Boolean? ignore_checksum
    Boolean? ignore_conflict
    Boolean? ignore_name_clashes
    Boolean? allows_pushing_mounted
    Boolean? no_clobber
    Boolean? no_prompt
    Boolean? ocr
    Boolean? piped
    Boolean? quiet
    Boolean? recursive
    Int? retry_count
    String? skip_mime
    Boolean? verbose
  }
  command <<<
    drive push \
      ~{if defined(coerced_mime) then ("-coerced-mime " +  '"' + coerced_mime + '"') else ""} \
      ~{if (convert) then "-convert" else ""} \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if defined(destination) then ("-destination " +  '"' + destination + '"') else ""} \
      ~{if (directories) then "-directories" else ""} \
      ~{if defined(encryption_password) then ("-encryption-password " +  '"' + encryption_password + '"') else ""} \
      ~{if defined(exclude_ops) then ("-exclude-ops " +  '"' + exclude_ops + '"') else ""} \
      ~{if (files) then "-files" else ""} \
      ~{if (fix_clashes) then "-fix-clashes" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (ignore_checksum) then "-ignore-checksum" else ""} \
      ~{if (ignore_conflict) then "-ignore-conflict" else ""} \
      ~{if (ignore_name_clashes) then "-ignore-name-clashes" else ""} \
      ~{if (allows_pushing_mounted) then "-m" else ""} \
      ~{if (no_clobber) then "-no-clobber" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (ocr) then "-ocr" else ""} \
      ~{if (piped) then "-piped" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""} \
      ~{if defined(retry_count) then ("-retry-count " +  '"' + retry_count + '"') else ""} \
      ~{if defined(skip_mime) then ("-skip-mime " +  '"' + skip_mime + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coerced_mime: "the mimeType you are trying to coerce this file to be"
    convert: "toggles conversion of the file to its appropriate Google Doc format"
    depth: "max traversal depth (default -1)"
    destination: "specify the final destination of the contents of an operation"
    directories: "push only directories"
    encryption_password: "encryption password"
    exclude_ops: "exclude operations"
    files: "push only files"
    fix_clashes: "fix clashes by renaming or trashing files"
    force: "forces a push even if no changes present"
    ignore_checksum: "avoids computation of checksums as a final check."
    ignore_conflict: "turns off the conflict resolution safety"
    ignore_name_clashes: "ignore name clashes"
    allows_pushing_mounted: "allows pushing of mounted paths"
    no_clobber: "prevents overwriting of old content"
    no_prompt: "shows no prompt before applying the push action"
    ocr: "if true, attempt OCR on gif, jpg, pdf and png uploads"
    piped: "get content in from standard input (stdin)"
    quiet: "if set, do not log anything but errors"
    recursive: "performs the push action recursively (default true)"
    retry_count: "max number of retries for exponential backoff (default 20)"
    skip_mime: "skip elements with mimeTypes derived from these extensions"
    verbose: "show step by step information verbosely\\n"
  }
  output {
    File out_stdout = stdout()
  }
}