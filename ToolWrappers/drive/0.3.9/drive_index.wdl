version 1.0

task DriveIndex {
  input {
    Boolean? all_ops
    String? exclude_ops
    Boolean? force
    Boolean? ignore_conflict
    Boolean? ignore_name_clashes
    Boolean? matches
    Boolean? no_clobber
    Boolean? no_prompt
    Boolean? prune
    Boolean? quiet
    Boolean? recursive
    String? skip_mime
  }
  command <<<
    drive index \
      ~{if (all_ops) then "-all-ops" else ""} \
      ~{if defined(exclude_ops) then ("-exclude-ops " +  '"' + exclude_ops + '"') else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if (ignore_conflict) then "-ignore-conflict" else ""} \
      ~{if (ignore_name_clashes) then "-ignore-name-clashes" else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (no_clobber) then "-no-clobber" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (prune) then "-prune" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""} \
      ~{if defined(skip_mime) then ("-skip-mime " +  '"' + skip_mime + '"') else ""}
  >>>
  parameter_meta {
    all_ops: "perform all the index related operations"
    exclude_ops: "exclude operations"
    force: "forces a fetch even if no changes present"
    ignore_conflict: "turns off the conflict resolution safety (default true)"
    ignore_name_clashes: "ignore name clashes (default true)"
    matches: "search by prefix"
    no_clobber: "prevents overwriting of old content"
    no_prompt: "shows no prompt before applying the fetch action"
    prune: "remove stale indices"
    quiet: "if set, do not log anything but errors"
    recursive: "fetch recursively for children (default true)"
    skip_mime: "skip elements with mimeTypes derived from these extensions\\n"
  }
  output {
    File out_stdout = stdout()
  }
}