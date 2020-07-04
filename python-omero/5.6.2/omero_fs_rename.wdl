version 1.0

task OmeroFsRename {
  input {
    Boolean? no_move
    File fileset
  }
  command <<<
    omero fs rename \
      ~{fileset} \
      ~{true="--no-move" false="" no_move}
  >>>
  parameter_meta {
    no_move: "do not move original files and import log"
    fileset: "Fileset which should be renamed: ID or Fileset:ID"
  }
}