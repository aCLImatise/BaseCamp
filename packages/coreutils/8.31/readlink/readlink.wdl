version 1.0

task Readlink {
  input {
    Boolean? canonicalize
    Boolean? canonicalize_existing
    Boolean? canonicalize_missing
    Boolean? no_new_line
  }
  command <<<
    readlink \
      ~{if (canonicalize) then "--canonicalize" else ""} \
      ~{if (canonicalize_existing) then "--canonicalize-existing" else ""} \
      ~{if (canonicalize_missing) then "--canonicalize-missing" else ""} \
      ~{if (no_new_line) then "--no-newline" else ""}
  >>>
  parameter_meta {
    canonicalize: "canonicalize by following every symlink in\\nevery component of the given name recursively;\\nall but the last component must exist"
    canonicalize_existing: "canonicalize by following every symlink in\\nevery component of the given name recursively,\\nall components must exist"
    canonicalize_missing: "canonicalize by following every symlink in\\nevery component of the given name recursively,\\nwithout requirements on components existence"
    no_new_line: "do not output the trailing delimiter\\n-q, --quiet\\n-s, --silent                  suppress most error messages (on by default)\\n-v, --verbose                 report error messages\\n-z, --zero                    end each output line with NUL, not newline\\n--help     display this help and exit\\n--version  output version information and exit"
  }
  output {
    File out_stdout = stdout()
  }
}