version 1.0

task ChIPAssoc {
  input {
    String bedBed
    String dbDb
    String gGSet
    Int minMin
    Int maxMax
    String nameName
    String labLab
    String rbgRbg
    Boolean gname2Gname2
  }
  command <<<
    ChIPAssoc \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(gGSet) then ("--gset " +  '"' + gGSet + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(labLab) then ("--lab " +  '"' + labLab + '"') else ""} \
      ~{if defined(rbgRbg) then ("--rbg " +  '"' + rbgRbg + '"') else ""} \
      ~{true="--gname2" false="" gname2Gname2}
  >>>
}