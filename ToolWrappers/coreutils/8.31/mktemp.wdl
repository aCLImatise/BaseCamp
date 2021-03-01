version 1.0

task Mktemp {
  input {
    Boolean? directory
    Boolean? dry_run
    Boolean? quiet
    String? suffix
    String? tmpdir
    Boolean? interpret_template_single
  }
  command <<<
    mktemp \
      ~{if (directory) then "--directory" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if (interpret_template_single) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory: "create a directory, not a file"
    dry_run: "do not create anything; merely print a name (unsafe)"
    quiet: "suppress diagnostics about file/dir-creation failure"
    suffix: "append SUFF to TEMPLATE; SUFF must not contain a slash.\\nThis option is implied if TEMPLATE does not end in X"
    tmpdir: "[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not\\nspecified, use $TMPDIR if set, else /tmp.  With\\nthis option, TEMPLATE must not be an absolute name;\\nunlike with -t, TEMPLATE may contain slashes, but\\nmktemp creates only the final component"
    interpret_template_single: "interpret TEMPLATE as a single file name component,\\nrelative to a directory: $TMPDIR, if set; else the\\ndirectory specified via -p; else /tmp [deprecated]"
  }
  output {
    File out_stdout = stdout()
  }
}