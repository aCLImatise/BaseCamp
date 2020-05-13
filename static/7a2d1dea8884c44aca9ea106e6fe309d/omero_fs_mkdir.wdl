version 1.0

task OmeroFsMkdir {
  input {
    Boolean parentsParents
    String? newNewDir
  }
  command <<<
    omero fs mkdir \
      ~{newNewDir} \
      ~{true="--parents" false="" parentsParents}
  >>>
}