version 1.0

task OmeroSessionsClear {
  input {
    Boolean? all
  }
  command <<<
    omero sessions clear \
      ~{true="--all" false="" all}
  >>>
  parameter_meta {
    all: "Remove all locally stored sessions not just inactive ones"
  }
}