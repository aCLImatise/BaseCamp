version 1.0

task OmeroConfigLoad {
  input {
    Boolean? no_error_conflict
    File file
  }
  command <<<
    omero config load \
      ~{file} \
      ~{true="-q" false="" no_error_conflict}
  >>>
  parameter_meta {
    no_error_conflict: "No error on conflict"
    file: "Files to read from. Default to standard input if not specified"
  }
}