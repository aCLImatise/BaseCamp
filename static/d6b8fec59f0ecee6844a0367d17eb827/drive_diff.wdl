version 1.0

task DriveDiff {
  input {
    Boolean? base_local
    Int? depth
    Boolean? ignore_checksum
    Boolean? ignore_conflict
    Boolean? ignore_name_clashes
    Boolean? quiet
    Boolean? recursive
    Boolean? skip_content_check
    Boolean? unified_diff_default
  }
  command <<<
    drive diff \
      ~{if (base_local) then "-base-local" else ""} \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (ignore_checksum) then "-ignore-checksum" else ""} \
      ~{if (ignore_conflict) then "-ignore-conflict" else ""} \
      ~{if (ignore_name_clashes) then "-ignore-name-clashes" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""} \
      ~{if (skip_content_check) then "-skip-content-check" else ""} \
      ~{if (unified_diff_default) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_local: "when set uses local as the base other remote will be used as the base (default true)"
    depth: "max traversal depth (default -1)"
    ignore_checksum: "avoids computation of checksums as a final check."
    ignore_conflict: "turns off the conflict resolution safety"
    ignore_name_clashes: "ignore name clashes"
    quiet: "if set, do not log anything but errors"
    recursive: "recursively diff (default true)"
    skip_content_check: "skip diffing actual body content, show only name, time, type changes"
    unified_diff_default: "unified diff (default true)"
  }
  output {
    File out_stdout = stdout()
  }
}