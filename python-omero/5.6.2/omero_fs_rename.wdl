version 1.0

task OmeroFsRename {
  input {
    Boolean noNoMove
    File? filesetFileset
  }
  command <<<
    omero fs rename \
      ~{filesetFileset} \
      ~{true="--no-move" false="" noNoMove}
  >>>
}