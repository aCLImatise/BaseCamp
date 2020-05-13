version 1.0

task ClipcontextG2t {
  input {
    Float thrThr
    Boolean revRevFilter
    Int minMinLen
    Int maxMaxLen
    Float minMinExonOl
    Boolean mergeMergeMode
    Int mergeMergeExt
    Boolean addAddOut
    Int seqSeqExt
    Boolean allAllGenOut
    Boolean genGenUniqIds
    String inIn
    String outOut
    String trTr
    String gtfGtf
    String genGen
  }
  command <<<
    clipcontext g2t \
      ~{if defined(thrThr) then ("--thr " +  '"' + thrThr + '"') else ""} \
      ~{true="--rev-filter" false="" revRevFilter} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(minMinExonOl) then ("--min-exon-ol " +  '"' + minMinExonOl + '"') else ""} \
      ~{true="--merge-mode" false="" mergeMergeMode} \
      ~{if defined(mergeMergeExt) then ("--merge-ext " +  '"' + mergeMergeExt + '"') else ""} \
      ~{true="--add-out" false="" addAddOut} \
      ~{if defined(seqSeqExt) then ("--seq-ext " +  '"' + seqSeqExt + '"') else ""} \
      ~{true="--all-gen-out" false="" allAllGenOut} \
      ~{true="--gen-uniq-ids" false="" genGenUniqIds} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(trTr) then ("--tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(genGen) then ("--gen " +  '"' + genGen + '"') else ""}
  >>>
}