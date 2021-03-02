version 1.0

task PtargrepArchive {
  input {
    Boolean? basename
    Boolean? ignore_case
    Boolean? list_only
    Boolean? verbose
    String p_tar_grep
    File tar_file
  }
  command <<<
    ptargrep archive \
      ~{p_tar_grep} \
      ~{tar_file} \
      ~{if (basename) then "--basename" else ""} \
      ~{if (ignore_case) then "--ignore-case" else ""} \
      ~{if (list_only) then "--list-only" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    basename: "ignore directory paths from archive"
    ignore_case: "do case-insensitive pattern matching"
    list_only: "list matching filenames rather than extracting matches"
    verbose: "write debugging message to STDERR"
    p_tar_grep: ""
    tar_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}