version 1.0

task SplitMEM {
  input {
    File fileFile
    String memMem
    File manyManyMems
    String cdgCdg
    Boolean multiMultiFa
  }
  command <<<
    splitMEM \
      ~{if defined(fileFile) then ("-file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(memMem) then ("-mem " +  '"' + memMem + '"') else ""} \
      ~{if defined(manyManyMems) then ("-manyMEMs " +  '"' + manyManyMems + '"') else ""} \
      ~{if defined(cdgCdg) then ("-cdg " +  '"' + cdgCdg + '"') else ""} \
      ~{true="-multiFa" false="" multiMultiFa}
  >>>
}