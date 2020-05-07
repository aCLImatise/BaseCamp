version 1.0

task PoretoolsWinner {
  input {
    Boolean quietQuiet
    String typeType
    File? filesFiles
  }
  command <<<
    poretools winner \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""}
  >>>
}