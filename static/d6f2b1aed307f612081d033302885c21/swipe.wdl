version 1.0

task Swipe {
  input {
    File dbDb
    File queryQuery
    String matrixMatrix
    String penaltyPenalty
    String rewardReward
    String gapGapOpen
    String gapGapExtend
    String numNumDescriptions
    String numNumAlignments
    String evalueEvalue
    String mineMineValue
    String minMinScore
    String maxMaxScore
    String numNumThreads
    String outOutFmt
    Boolean showShowGis
    String symSymType
    String strandStrand
    String queryQueryGenCode
    String dbDbGenCode
    File taxidTaxidList
    String dumpDump
    Boolean showShowTaxid
    File outOut
    String dbDbSize
  }
  command <<<
    swipe \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(penaltyPenalty) then ("--penalty " +  '"' + penaltyPenalty + '"') else ""} \
      ~{if defined(rewardReward) then ("--reward " +  '"' + rewardReward + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gapopen " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gapextend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(numNumDescriptions) then ("--num_descriptions " +  '"' + numNumDescriptions + '"') else ""} \
      ~{if defined(numNumAlignments) then ("--num_alignments " +  '"' + numNumAlignments + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(mineMineValue) then ("--minevalue " +  '"' + mineMineValue + '"') else ""} \
      ~{if defined(minMinScore) then ("--min_score " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(maxMaxScore) then ("--max_score " +  '"' + maxMaxScore + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(outOutFmt) then ("--outfmt " +  '"' + outOutFmt + '"') else ""} \
      ~{true="--show_gis" false="" showShowGis} \
      ~{if defined(symSymType) then ("--symtype " +  '"' + symSymType + '"') else ""} \
      ~{if defined(strandStrand) then ("--strand " +  '"' + strandStrand + '"') else ""} \
      ~{if defined(queryQueryGenCode) then ("--query_gencode " +  '"' + queryQueryGenCode + '"') else ""} \
      ~{if defined(dbDbGenCode) then ("--db_gencode " +  '"' + dbDbGenCode + '"') else ""} \
      ~{if defined(taxidTaxidList) then ("--taxidlist " +  '"' + taxidTaxidList + '"') else ""} \
      ~{if defined(dumpDump) then ("--dump " +  '"' + dumpDump + '"') else ""} \
      ~{true="--show_taxid" false="" showShowTaxid} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(dbDbSize) then ("--dbsize " +  '"' + dbDbSize + '"') else ""}
  >>>
}