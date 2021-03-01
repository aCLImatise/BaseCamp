version 1.0

task Rmdir {
  input {
    Boolean? ignore_fail_on_non_empty
    Boolean? parents
    Directory? verbose
  }
  command <<<
    rmdir \
      ~{if (ignore_fail_on_non_empty) then "--ignore-fail-on-non-empty" else ""} \
      ~{if (parents) then "--parents" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignore_fail_on_non_empty: "ignore each failure that is solely because a directory\\nis non-empty"
    parents: "remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\\nsimilar to 'rmdir a/b/c a/b a'"
    verbose: "output a diagnostic for every directory processed"
  }
  output {
    File out_stdout = stdout()
    Directory out_verbose = "${in_verbose}"
  }
}