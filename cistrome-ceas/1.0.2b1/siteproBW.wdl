version 1.0

task SiteproBW {
  input {
    String bwBw
    String bedBed
    String spanSpan
    String pfPfRes
    Boolean dirDir
    Boolean dumpDump
    Boolean confidConfid
    String nameName
    String labelLabel
  }
  command <<<
    siteproBW \
      ~{if defined(bwBw) then ("--bw " +  '"' + bwBw + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(pfPfRes) then ("--pf-res " +  '"' + pfPfRes + '"') else ""} \
      ~{true="--dir" false="" dirDir} \
      ~{true="--dump" false="" dumpDump} \
      ~{true="--confid" false="" confidConfid} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""}
  >>>
}