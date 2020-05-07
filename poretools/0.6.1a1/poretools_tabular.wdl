version 1.0

task PoretoolsTabular {
  input {
    Boolean quietQuiet
    String typeType
    File? filesFiles
  }
  command <<<
    poretools tabular \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""}
  >>>
}