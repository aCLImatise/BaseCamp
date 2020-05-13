version 1.0

task FastaTool {
  input {
    Boolean summarySummary
    Int chunksChunks
    Boolean splitSplit
    String evalEvalCode
    String evalEvalAll
    String extractExtractIds
    String grepGrepHeader
    String grepGrepSeq
    Int wrapWrap
    String translateTranslate
    Boolean trimTrimMakerUtr
    Boolean seqSeqOnly
    Boolean ntNtCount
    Boolean lengthLength
    Boolean totalTotalLength
    Boolean n50N50
    Boolean tabTab
    Boolean tableTable
    Boolean printPrint
    Boolean reverseReverse
    Boolean revRevSeq
    Boolean compCompSeq
    Boolean revRevComp
    Boolean shuffleShuffleOrder
    Boolean shuffleShuffleSeq
    Boolean shuffleShuffleCodon
    Boolean shuffleShufflePick
    Boolean selectSelect
    Boolean removeRemove
    Boolean swapSwapIds
    Boolean protProtFix
    Boolean subseqSubseq
  }
  command <<<
    fasta_tool \
      ~{true="--summary" false="" summarySummary} \
      ~{if defined(chunksChunks) then ("--chunks " +  '"' + chunksChunks + '"') else ""} \
      ~{true="--split" false="" splitSplit} \
      ~{if defined(evalEvalCode) then ("--eval_code " +  '"' + evalEvalCode + '"') else ""} \
      ~{if defined(evalEvalAll) then ("--eval_all " +  '"' + evalEvalAll + '"') else ""} \
      ~{if defined(extractExtractIds) then ("--extract_ids " +  '"' + extractExtractIds + '"') else ""} \
      ~{if defined(grepGrepHeader) then ("--grep_header " +  '"' + grepGrepHeader + '"') else ""} \
      ~{if defined(grepGrepSeq) then ("--grep_seq " +  '"' + grepGrepSeq + '"') else ""} \
      ~{if defined(wrapWrap) then ("--wrap " +  '"' + wrapWrap + '"') else ""} \
      ~{if defined(translateTranslate) then ("--translate " +  '"' + translateTranslate + '"') else ""} \
      ~{true="--trim_maker_utr" false="" trimTrimMakerUtr} \
      ~{true="--seq_only" false="" seqSeqOnly} \
      ~{true="--nt_count" false="" ntNtCount} \
      ~{true="--length" false="" lengthLength} \
      ~{true="--total_length" false="" totalTotalLength} \
      ~{true="--n50" false="" n50N50} \
      ~{true="--tab" false="" tabTab} \
      ~{true="--table" false="" tableTable} \
      ~{true="--print" false="" printPrint} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--rev_seq" false="" revRevSeq} \
      ~{true="--comp_seq" false="" compCompSeq} \
      ~{true="--rev_comp" false="" revRevComp} \
      ~{true="--shuffle_order" false="" shuffleShuffleOrder} \
      ~{true="--shuffle_seq" false="" shuffleShuffleSeq} \
      ~{true="--shuffle_codon" false="" shuffleShuffleCodon} \
      ~{true="--shuffle_pick" false="" shuffleShufflePick} \
      ~{true="--select" false="" selectSelect} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--swap_ids" false="" swapSwapIds} \
      ~{true="--prot_fix" false="" protProtFix} \
      ~{true="--subseq" false="" subseqSubseq}
  >>>
}