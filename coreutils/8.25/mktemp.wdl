version 1.0

task Mktemp {
  input {
    Boolean? directory
    Boolean? dry_run
    Boolean? quiet
    String? suffix
    String? tmpdir
    Boolean? interpret_template_set
    String? option
  }
  command <<<
    mktemp \
      ~{option} \
      ~{true="--directory" false="" directory} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{true="-t" false="" interpret_template_set}
  >>>
  parameter_meta {
    directory: "create a directory, not a file"
    dry_run: "do not create anything; merely print a name (unsafe)"
    quiet: "suppress diagnostics about file/dir-creation failure"
    suffix: "append SUFF to TEMPLATE; SUFF must not contain a slash. This option is implied if TEMPLATE does not end in X"
    tmpdir: "[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not specified, use $TMPDIR if set, else /tmp.  With this option, TEMPLATE must not be an absolute name; unlike with -t, TEMPLATE may contain slashes, but mktemp creates only the final component"
    interpret_template_set: "interpret TEMPLATE as a single file name component, relative to a directory: $TMPDIR, if set; else the directory specified via -p; else /tmp [deprecated]"
    option: ""
  }
}