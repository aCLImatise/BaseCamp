version 1.0

task Ceas {
  input {
    String bedBed
    String wigWig
    String eEBed
    String gtGt
    String nameName
    Int sizesSizes
    String biBiSizes
    Boolean bgBg
    String spanSpan
    String pfPfRes
    String relRelDist
    String gnGnGroups
    String gnGnGroupNames
    Boolean gname2Gname2
    Boolean dumpDump
    String? inputInputFiles
  }
  command <<<
    ceas \
      ~{inputInputFiles} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(wigWig) then ("--wig " +  '"' + wigWig + '"') else ""} \
      ~{if defined(eEBed) then ("--ebed " +  '"' + eEBed + '"') else ""} \
      ~{if defined(gtGt) then ("--gt " +  '"' + gtGt + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(sizesSizes) then ("--sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{if defined(biBiSizes) then ("--bisizes " +  '"' + biBiSizes + '"') else ""} \
      ~{true="--bg" false="" bgBg} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(pfPfRes) then ("--pf-res " +  '"' + pfPfRes + '"') else ""} \
      ~{if defined(relRelDist) then ("--rel-dist " +  '"' + relRelDist + '"') else ""} \
      ~{if defined(gnGnGroups) then ("--gn-groups " +  '"' + gnGnGroups + '"') else ""} \
      ~{if defined(gnGnGroupNames) then ("--gn-group-names " +  '"' + gnGnGroupNames + '"') else ""} \
      ~{true="--gname2" false="" gname2Gname2} \
      ~{true="--dump" false="" dumpDump}
  >>>
}