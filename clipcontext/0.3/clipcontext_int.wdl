version 1.0

task ClipcontextInt {
  input {
    Float minMinIntronOl
    Int minMinLen
    Int maxMaxLen
    Float thrThr
    Boolean revRevFilter
    String inIn
    String trTr
    String gtfGtf
    String outOut
  }
  command <<<
    clipcontext int \
      ~{if defined(minMinIntronOl) then ("--min-intron-ol " +  '"' + minMinIntronOl + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(thrThr) then ("--thr " +  '"' + thrThr + '"') else ""} \
      ~{true="--rev-filter" false="" revRevFilter} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(trTr) then ("--tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}