version 1.0

task Sitepro {
  input {
    String wigWig
    String bedBed
    String spanSpan
    String pfPfRes
    Boolean dirDir
    Boolean dumpDump
    String nameName
    String labelLabel
  }
  command <<<
    sitepro \
      ~{if defined(wigWig) then ("--wig " +  '"' + wigWig + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(pfPfRes) then ("--pf-res " +  '"' + pfPfRes + '"') else ""} \
      ~{true="--dir" false="" dirDir} \
      ~{true="--dump" false="" dumpDump} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""}
  >>>
}