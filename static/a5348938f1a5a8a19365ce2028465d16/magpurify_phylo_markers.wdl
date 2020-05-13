version 1.0

task MagpurifyPhyloMarkers {
  input {
    String dbDb
    Boolean continueContinue
    Int maxMaxTargetSeqs
    String cutCutOffType
    String seqSeqType
    String hitHitType
    Array[String]+ excludeExcludeClades
    String binBinFract
    String contigContigFract
    Boolean allowAllowNoClass
    String threadsThreads
    String? fnaFna
    String? outOut
  }
  command <<<
    magpurify phylo-markers \
      ~{fnaFna} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{true="--continue" false="" continueContinue} \
      ~{if defined(maxMaxTargetSeqs) then ("--max_target_seqs " +  '"' + maxMaxTargetSeqs + '"') else ""} \
      ~{if defined(cutCutOffType) then ("--cutoff_type " +  '"' + cutCutOffType + '"') else ""} \
      ~{if defined(seqSeqType) then ("--seq_type " +  '"' + seqSeqType + '"') else ""} \
      ~{if defined(hitHitType) then ("--hit_type " +  '"' + hitHitType + '"') else ""} \
      ~{if defined(excludeExcludeClades) then ("--exclude_clades " +  '"' + excludeExcludeClades + '"') else ""} \
      ~{if defined(binBinFract) then ("--bin_fract " +  '"' + binBinFract + '"') else ""} \
      ~{if defined(contigContigFract) then ("--contig_fract " +  '"' + contigContigFract + '"') else ""} \
      ~{true="--allow_noclass" false="" allowAllowNoClass} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{outOut}
  >>>
}