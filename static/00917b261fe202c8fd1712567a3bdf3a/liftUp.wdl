version 1.0

task LiftUp {
  input {
    String noNoSort
    String gapGapSize
    String ignoreIgnoreVersions
    String extExtGenePred
  }
  command <<<
    liftUp \
      ~{if defined(noNoSort) then ("-nosort " +  '"' + noNoSort + '"') else ""} \
      ~{if defined(gapGapSize) then ("-gapsize " +  '"' + gapGapSize + '"') else ""} \
      ~{if defined(ignoreIgnoreVersions) then ("-ignoreVersions " +  '"' + ignoreIgnoreVersions + '"') else ""} \
      ~{if defined(extExtGenePred) then ("-extGenePred " +  '"' + extExtGenePred + '"') else ""}
  >>>
}