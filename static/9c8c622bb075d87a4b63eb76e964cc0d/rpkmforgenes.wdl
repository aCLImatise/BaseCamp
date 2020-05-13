version 1.0

task Rpkmforgenes.py {
  input {
    String oO
    String iI
    String aA
    String uU
    String no3utrNo3utr
    String fullFullTranscript
    String maxlengthMaxlength
    String maxMaxGenes
    String nameNameCollapse
    String noNoCollapse
    String noNoOverlap
    String rmRmNameOverlap
    String rmRmRegions
    String flatFlat
    String txTxUnique
    String onlyOnlyCoding
    String swapSwapStrands
    String intronsIntrons
    String keepKeepHap
    String noNoRandom
    String geneGenePred
    String bedBedAnn
    String enEnSgtFann
    String addAddChr
    String bedBed
    String bedBedCompacted
    String bedBedSpace
    String bowtieBowtie
    String samSamSe
    String bamBamU
    String gffGff
    String mrnaMrnaNorm
    String exonExonNorm
    String allAllMapNorm
    String forcedForcedTotal
    String readReadCount
    String tableTable
    String sortSortPos
    String exportExportAnn
    String readReadPresent
    String strandStrand
    String bothBothEnds
    String bothBothEndsCeil
    String midMidRead
    String diffDiffReads
    String maxMaxReads
    String randomRandomReads
    String minMinQual
    String maxMaxNm
    String addAddChr
    String nN
    String pP
    String quiteQuite
    String hH
  }
  command <<<
    rpkmforgenes.py \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(no3utrNo3utr) then ("-no3utr " +  '"' + no3utrNo3utr + '"') else ""} \
      ~{if defined(fullFullTranscript) then ("-fulltranscript " +  '"' + fullFullTranscript + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("-maxlength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(maxMaxGenes) then ("-maxgenes " +  '"' + maxMaxGenes + '"') else ""} \
      ~{if defined(nameNameCollapse) then ("-namecollapse " +  '"' + nameNameCollapse + '"') else ""} \
      ~{if defined(noNoCollapse) then ("-nocollapse " +  '"' + noNoCollapse + '"') else ""} \
      ~{if defined(noNoOverlap) then ("-nooverlap " +  '"' + noNoOverlap + '"') else ""} \
      ~{if defined(rmRmNameOverlap) then ("-rmnameoverlap " +  '"' + rmRmNameOverlap + '"') else ""} \
      ~{if defined(rmRmRegions) then ("-rmregions " +  '"' + rmRmRegions + '"') else ""} \
      ~{if defined(flatFlat) then ("-flat " +  '"' + flatFlat + '"') else ""} \
      ~{if defined(txTxUnique) then ("-txunique " +  '"' + txTxUnique + '"') else ""} \
      ~{if defined(onlyOnlyCoding) then ("-onlycoding " +  '"' + onlyOnlyCoding + '"') else ""} \
      ~{if defined(swapSwapStrands) then ("-swapstrands " +  '"' + swapSwapStrands + '"') else ""} \
      ~{if defined(intronsIntrons) then ("-introns " +  '"' + intronsIntrons + '"') else ""} \
      ~{if defined(keepKeepHap) then ("-keephap " +  '"' + keepKeepHap + '"') else ""} \
      ~{if defined(noNoRandom) then ("-norandom " +  '"' + noNoRandom + '"') else ""} \
      ~{if defined(geneGenePred) then ("-genePred " +  '"' + geneGenePred + '"') else ""} \
      ~{if defined(bedBedAnn) then ("-bedann " +  '"' + bedBedAnn + '"') else ""} \
      ~{if defined(enEnSgtFann) then ("-ensgtfann " +  '"' + enEnSgtFann + '"') else ""} \
      ~{if defined(addAddChr) then ("-addchr " +  '"' + addAddChr + '"') else ""} \
      ~{if defined(bedBed) then ("-bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(bedBedCompacted) then ("-bedcompacted " +  '"' + bedBedCompacted + '"') else ""} \
      ~{if defined(bedBedSpace) then ("-bedspace " +  '"' + bedBedSpace + '"') else ""} \
      ~{if defined(bowtieBowtie) then ("-bowtie " +  '"' + bowtieBowtie + '"') else ""} \
      ~{if defined(samSamSe) then ("-samse " +  '"' + samSamSe + '"') else ""} \
      ~{if defined(bamBamU) then ("-bamu " +  '"' + bamBamU + '"') else ""} \
      ~{if defined(gffGff) then ("-gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(mrnaMrnaNorm) then ("-mRNAnorm " +  '"' + mrnaMrnaNorm + '"') else ""} \
      ~{if defined(exonExonNorm) then ("-exonnorm " +  '"' + exonExonNorm + '"') else ""} \
      ~{if defined(allAllMapNorm) then ("-allmapnorm " +  '"' + allAllMapNorm + '"') else ""} \
      ~{if defined(forcedForcedTotal) then ("-forcedtotal " +  '"' + forcedForcedTotal + '"') else ""} \
      ~{if defined(readReadCount) then ("-readcount " +  '"' + readReadCount + '"') else ""} \
      ~{if defined(tableTable) then ("-table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(sortSortPos) then ("-sortpos " +  '"' + sortSortPos + '"') else ""} \
      ~{if defined(exportExportAnn) then ("-exportann " +  '"' + exportExportAnn + '"') else ""} \
      ~{if defined(readReadPresent) then ("-readpresent " +  '"' + readReadPresent + '"') else ""} \
      ~{if defined(strandStrand) then ("-strand " +  '"' + strandStrand + '"') else ""} \
      ~{if defined(bothBothEnds) then ("-bothends " +  '"' + bothBothEnds + '"') else ""} \
      ~{if defined(bothBothEndsCeil) then ("-bothendsceil " +  '"' + bothBothEndsCeil + '"') else ""} \
      ~{if defined(midMidRead) then ("-midread " +  '"' + midMidRead + '"') else ""} \
      ~{if defined(diffDiffReads) then ("-diffreads " +  '"' + diffDiffReads + '"') else ""} \
      ~{if defined(maxMaxReads) then ("-maxreads " +  '"' + maxMaxReads + '"') else ""} \
      ~{if defined(randomRandomReads) then ("-randomreads " +  '"' + randomRandomReads + '"') else ""} \
      ~{if defined(minMinQual) then ("-minqual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(maxMaxNm) then ("-maxNM " +  '"' + maxMaxNm + '"') else ""} \
      ~{if defined(addAddChr) then ("-addchr " +  '"' + addAddChr + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(quiteQuite) then ("-quite " +  '"' + quiteQuite + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}