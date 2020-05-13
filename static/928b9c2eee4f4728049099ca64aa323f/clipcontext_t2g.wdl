version 1.0

task ClipcontextT2g {
  input {
    Float thrThr
    Boolean revRevFilter
    Int minMinLen
    Int maxMaxLen
    Int seqSeqExt
    Boolean genGenUniqIds
    String inIn
    String outOut
    String gtfGtf
    String genGen
  }
  command <<<
    clipcontext t2g \
      ~{if defined(thrThr) then ("--thr " +  '"' + thrThr + '"') else ""} \
      ~{true="--rev-filter" false="" revRevFilter} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(seqSeqExt) then ("--seq-ext " +  '"' + seqSeqExt + '"') else ""} \
      ~{true="--gen-uniq-ids" false="" genGenUniqIds} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(genGen) then ("--gen " +  '"' + genGen + '"') else ""}
  >>>
}