version 1.0

task IuVisualizeQualDicts {
  input {
    File pP
    String titleTitle
    Boolean splitSplitTiles
    String? qualQualDict
  }
  command <<<
    iu-visualize-qual-dicts \
      ~{qualQualDict} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--split-tiles" false="" splitSplitTiles}
  >>>
}