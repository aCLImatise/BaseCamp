version 1.0

task RILseqSignificantRegions.py {
  input {
    String genomeGenome
    String totalTotalRna
    Boolean totalTotalReverse
    Int minMinTotalCounts
    String normNormPercentile
    String bcBcDir
    Boolean riboRiboZero
    String rrnaRrnaList
    Boolean allAllInteractions
    Boolean onlyOnlySingles
    String estEstUtrLens
    String bcBcChrList
    String refseqRefseqDir
    String targetsTargetsFile
    String singleSingleCounts
    String repRepTable
    Int lengthLength
    String shufflesShuffles
    String serversServers
    Boolean runRunRnaUp
    String rnaRnaUpCmd
    String padPadSeqs
    String seSeGlen
    Int maxMaxSegs
    Int minMinInt
    Int maxMaxPv
    Int minMinOddsRatio
    String linearLinearChromosomeList
    String? readsReadsIn
  }
  command <<<
    RILseq_significant_regions.py \
      ~{readsReadsIn} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(totalTotalRna) then ("--total_RNA " +  '"' + totalTotalRna + '"') else ""} \
      ~{true="--total_reverse" false="" totalTotalReverse} \
      ~{if defined(minMinTotalCounts) then ("--min_total_counts " +  '"' + minMinTotalCounts + '"') else ""} \
      ~{if defined(normNormPercentile) then ("--norm_percentile " +  '"' + normNormPercentile + '"') else ""} \
      ~{if defined(bcBcDir) then ("--bc_dir " +  '"' + bcBcDir + '"') else ""} \
      ~{true="--ribozero" false="" riboRiboZero} \
      ~{if defined(rrnaRrnaList) then ("--rrna_list " +  '"' + rrnaRrnaList + '"') else ""} \
      ~{true="--all_interactions" false="" allAllInteractions} \
      ~{true="--only_singles" false="" onlyOnlySingles} \
      ~{if defined(estEstUtrLens) then ("--est_utr_lens " +  '"' + estEstUtrLens + '"') else ""} \
      ~{if defined(bcBcChrList) then ("--BC_chrlist " +  '"' + bcBcChrList + '"') else ""} \
      ~{if defined(refseqRefseqDir) then ("--refseq_dir " +  '"' + refseqRefseqDir + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets_file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{if defined(singleSingleCounts) then ("--single_counts " +  '"' + singleSingleCounts + '"') else ""} \
      ~{if defined(repRepTable) then ("--rep_table " +  '"' + repRepTable + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(shufflesShuffles) then ("--shuffles " +  '"' + shufflesShuffles + '"') else ""} \
      ~{if defined(serversServers) then ("--servers " +  '"' + serversServers + '"') else ""} \
      ~{true="--run_RNAup" false="" runRunRnaUp} \
      ~{if defined(rnaRnaUpCmd) then ("--RNAup_cmd " +  '"' + rnaRnaUpCmd + '"') else ""} \
      ~{if defined(padPadSeqs) then ("--pad_seqs " +  '"' + padPadSeqs + '"') else ""} \
      ~{if defined(seSeGlen) then ("--seglen " +  '"' + seSeGlen + '"') else ""} \
      ~{if defined(maxMaxSegs) then ("--maxsegs " +  '"' + maxMaxSegs + '"') else ""} \
      ~{if defined(minMinInt) then ("--min_int " +  '"' + minMinInt + '"') else ""} \
      ~{if defined(maxMaxPv) then ("--max_pv " +  '"' + maxMaxPv + '"') else ""} \
      ~{if defined(minMinOddsRatio) then ("--min_odds_ratio " +  '"' + minMinOddsRatio + '"') else ""} \
      ~{if defined(linearLinearChromosomeList) then ("--linear_chromosome_list " +  '"' + linearLinearChromosomeList + '"') else ""}
  >>>
}