version 1.0

task OmeroSessionsList {
  input {
    Boolean? no_purge
  }
  command <<<
    omero sessions list \
      ~{true="--no-purge" false="" no_purge}
  >>>
  parameter_meta {
    no_purge: "Do not remove inactive sessions"
  }
}