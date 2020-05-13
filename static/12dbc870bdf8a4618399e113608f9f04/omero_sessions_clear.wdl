version 1.0

task OmeroSessionsClear {
  input {
    Boolean allAll
  }
  command <<<
    omero sessions clear \
      ~{true="--all" false="" allAll}
  >>>
}