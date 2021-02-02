version 1.0

task Realpath {
  input {
    Boolean? canonicalize_existing
    Boolean? canonicalize_missing
    Boolean? logical
    Boolean? physical
    Boolean? quiet
    File? relative_to
    String? relative_base
    Boolean? no_symlinks
    Boolean? end_output_line
  }
  command <<<
    realpath \
      ~{if (canonicalize_existing) then "--canonicalize-existing" else ""} \
      ~{if (canonicalize_missing) then "--canonicalize-missing" else ""} \
      ~{if (logical) then "--logical" else ""} \
      ~{if (physical) then "--physical" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(relative_to) then ("--relative-to " +  '"' + relative_to + '"') else ""} \
      ~{if defined(relative_base) then ("--relative-base " +  '"' + relative_base + '"') else ""} \
      ~{if (no_symlinks) then "--no-symlinks" else ""} \
      ~{if (end_output_line) then "--zero" else ""}
  >>>
  parameter_meta {
    canonicalize_existing: "all components of the path must exist"
    canonicalize_missing: "no path components need exist or be a directory"
    logical: "resolve '..' components before symlinks"
    physical: "resolve symlinks as encountered (default)"
    quiet: "suppress most error messages"
    relative_to: "print the resolved path relative to DIR"
    relative_base: "print absolute paths unless paths below DIR"
    no_symlinks: "don't expand symlinks"
    end_output_line: "end each output line with NUL, not newline"
  }
  output {
    File out_stdout = stdout()
  }
}