version 1.0

task AtlasDiff {
  input {
    String ctxCtx
    Boolean quietQuiet
    Boolean addAdd
    String? sampleSample
    String? graphGraph
  }
  command <<<
    atlas diff \
      ~{sampleSample} \
      ~{if defined(ctxCtx) then ("--ctx " +  '"' + ctxCtx + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--add" false="" addAdd} \
      ~{graphGraph}
  >>>
}