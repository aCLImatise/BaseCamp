version 1.0

task Gca {
  input {
    String bedBed
    String gtGt
    String spanSpan
    String nameName
    String gnGnGroup
    String gname2Gname2
  }
  command <<<
    gca \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(gtGt) then ("--gt " +  '"' + gtGt + '"') else ""} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(gnGnGroup) then ("--gn-group " +  '"' + gnGnGroup + '"') else ""} \
      ~{if defined(gname2Gname2) then ("--gname2 " +  '"' + gname2Gname2 + '"') else ""}
  >>>
}