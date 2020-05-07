version 1.0

task PoretoolsStats {
  input {
    Boolean quietQuiet
    String typeType
    Boolean fullFullTsv
    String groupGroup
    File? filesFiles
  }
  command <<<
    poretools stats \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--full-tsv" false="" fullFullTsv} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""}
  >>>
}