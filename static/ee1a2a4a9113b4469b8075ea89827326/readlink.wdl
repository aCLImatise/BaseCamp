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
    String? option
  }
  command <<<
    readlink \
      ~{option} \
      ~{true="--canonicalize" false="" canonicalize} \
      ~{true="--canonicalize-existing" false="" canonicalize_existing} \
      ~{true="--canonicalize-missing" false="" canonicalize_missing} \
      ~{true="--no-newline" false="" no_new_line} \
      ~{true="--silent" false="" silent} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--zero" false="" end_output_line}
  >>>
  parameter_meta {
    canonicalize: "canonicalise by following every symlink in every component of the given name recursively; all but the last component must exist"
    canonicalize_existing: "canonicalise by following every symlink in every component of the given name recursively, all components must exist"
    canonicalize_missing: "canonicalize by following every symlink in every component of the given name recursively, without requirements on components existence"
    no_new_line: "do not output the trailing delimiter"
    silent: "suppress most error messages"
    verbose: "report error messages"
    end_output_line: "end each output line with NUL, not newline"
    option: ""
  }
}