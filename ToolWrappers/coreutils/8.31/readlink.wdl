version 1.0

task Readlink {
  input {
    Boolean? canonicalize
    Boolean? canonicalize_existing
    Boolean? canonicalize_missing
    Boolean? no_new_line
    Boolean? silent
    Boolean? verbose
    Boolean? end_output_line
  }
  command <<<
    readlink \
      ~{if (canonicalize) then "--canonicalize" else ""} \
      ~{if (canonicalize_existing) then "--canonicalize-existing" else ""} \
      ~{if (canonicalize_missing) then "--canonicalize-missing" else ""} \
      ~{if (no_new_line) then "--no-newline" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (end_output_line) then "--zero" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    canonicalize: "canonicalize by following every symlink in\\nevery component of the given name recursively;\\nall but the last component must exist"
    canonicalize_existing: "canonicalize by following every symlink in\\nevery component of the given name recursively,\\nall components must exist"
    canonicalize_missing: "canonicalize by following every symlink in\\nevery component of the given name recursively,\\nwithout requirements on components existence"
    no_new_line: "do not output the trailing delimiter"
    silent: "suppress most error messages (on by default)"
    verbose: "report error messages"
    end_output_line: "end each output line with NUL, not newline"
  }
  output {
    File out_stdout = stdout()
  }
}