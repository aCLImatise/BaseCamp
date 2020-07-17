version 1.0

task Realpath {
  input {
    Boolean? canonicalize_existing
    Boolean? canonicalize_missing
    Boolean? logical
    Boolean? physical
    Boolean? quiet
    File? relative_to
    File? relative_base
    Boolean? no_symlinks
    Boolean? end_output_line
    String? option
  }
  command <<<
    realpath \
      ~{option} \
      ~{true="--canonicalize-existing" false="" canonicalize_existing} \
      ~{true="--canonicalize-missing" false="" canonicalize_missing} \
      ~{true="--logical" false="" logical} \
      ~{true="--physical" false="" physical} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(relative_to) then ("--relative-to " +  '"' + relative_to + '"') else ""} \
      ~{if defined(relative_base) then ("--relative-base " +  '"' + relative_base + '"') else ""} \
      ~{true="--no-symlinks" false="" no_symlinks} \
      ~{true="--zero" false="" end_output_line}
  >>>
  parameter_meta {
    canonicalize_existing: "all components of the path must exist"
    canonicalize_missing: "no path components need exist or be a directory"
    logical: "resolve '..' components before symlinks"
    physical: "resolve symlinks as encountered (default)"
    quiet: "suppress most error messages"
    relative_to: "print the resolved path relative to FILE"
    relative_base: "print absolute paths unless paths below FILE"
    no_symlinks: "don't expand symlinks"
    end_output_line: "end each output line with NUL, not newline"
    option: ""
  }
}