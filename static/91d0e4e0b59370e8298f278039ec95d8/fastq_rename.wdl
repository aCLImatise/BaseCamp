version 1.0

task FastqRename {
  input {
    String prefixPrefix
    Boolean renumRenum
    Boolean cleanClean
    String trTr
    String trcTrc
    String suffixSuffix
  }
  command <<<
    fastq_rename \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="-renum" false="" renumRenum} \
      ~{true="-clean" false="" cleanClean} \
      ~{if defined(trTr) then ("-tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(trcTrc) then ("-trc " +  '"' + trcTrc + '"') else ""} \
      ~{if defined(suffixSuffix) then ("-suffix " +  '"' + suffixSuffix + '"') else ""}
  >>>
}