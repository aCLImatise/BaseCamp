version 1.0

task OmeroLoad {
  input {
    Boolean? glob
    Boolean? keep_going
    String or
  }
  command <<<
    omero load \
      ~{or} \
      ~{true="--glob" false="" glob} \
      ~{true="--keep-going" false="" keep_going}
  >>>
  parameter_meta {
    glob: "Input paths are shell globs that should be expanded and sorted."
    keep_going: "Continue processing after an error."
    or: "$ omero login       # login can't take place in HERE-document $ omero load <<EOF user list group list EOF"
  }
}