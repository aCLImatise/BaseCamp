version 1.0

task Rmdir {
  input {
    Boolean? ignore_fail_on_non_empty
    Boolean? parents
    Boolean? verbose
    String? option
  }
  command <<<
    rmdir \
      ~{option} \
      ~{true="--ignore-fail-on-non-empty" false="" ignore_fail_on_non_empty} \
      ~{true="--parents" false="" parents} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    ignore_fail_on_non_empty: "ignore each failure that is solely because a directory is non-empty"
    parents: "remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is similar to 'rmdir a/b/c a/b a'"
    verbose: "output a diagnostic for every directory processed"
    option: ""
  }
}