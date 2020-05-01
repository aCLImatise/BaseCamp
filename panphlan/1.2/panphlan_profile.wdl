version 1.0

task PanphlanProfile.py {
  input {
    String iIDna
    String iIBowtie2Indexes
    String cladeClade
    String oODna
    String iIRna
    String sampleSamplePairs
    Int thThZero
    String thThPresent
    Int thThMulticopy
    Int minMinCoverage
    String leftLeftMax
    String rightRightMin
    String rnaRnaMaxZeros
    String rnaRnaNormPercentile
    String strainStrainSimilarityPerc
    String npNp
    String nanNan
    String oOCovPlot
    String oOCovPlotNormed
    String oOCov
    String oOIdx
    String oORna
    String strainStrainHitGenesPerc
    String iICov
    String numNumGenomes
    String genomeGenomeAvgLength
    Boolean addAddStrains
    Boolean interactiveInteractive
    Boolean verboseVerbose
  }
  command <<<
    panphlan_profile.py \
      ~{if defined(iIDna) then ("--i_dna " +  '"' + iIDna + '"') else ""} \
      ~{if defined(iIBowtie2Indexes) then ("--i_bowtie2_indexes " +  '"' + iIBowtie2Indexes + '"') else ""} \
      ~{if defined(cladeClade) then ("--clade " +  '"' + cladeClade + '"') else ""} \
      ~{if defined(oODna) then ("--o_dna " +  '"' + oODna + '"') else ""} \
      ~{if defined(iIRna) then ("--i_rna " +  '"' + iIRna + '"') else ""} \
      ~{if defined(sampleSamplePairs) then ("--sample_pairs " +  '"' + sampleSamplePairs + '"') else ""} \
      ~{if defined(thThZero) then ("--th_zero " +  '"' + thThZero + '"') else ""} \
      ~{if defined(thThPresent) then ("--th_present " +  '"' + thThPresent + '"') else ""} \
      ~{if defined(thThMulticopy) then ("--th_multicopy " +  '"' + thThMulticopy + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(leftLeftMax) then ("--left_max " +  '"' + leftLeftMax + '"') else ""} \
      ~{if defined(rightRightMin) then ("--right_min " +  '"' + rightRightMin + '"') else ""} \
      ~{if defined(rnaRnaMaxZeros) then ("--rna_max_zeros " +  '"' + rnaRnaMaxZeros + '"') else ""} \
      ~{if defined(rnaRnaNormPercentile) then ("--rna_norm_percentile " +  '"' + rnaRnaNormPercentile + '"') else ""} \
      ~{if defined(strainStrainSimilarityPerc) then ("--strain_similarity_perc " +  '"' + strainStrainSimilarityPerc + '"') else ""} \
      ~{if defined(npNp) then ("--np " +  '"' + npNp + '"') else ""} \
      ~{if defined(nanNan) then ("--nan " +  '"' + nanNan + '"') else ""} \
      ~{if defined(oOCovPlot) then ("--o_covplot " +  '"' + oOCovPlot + '"') else ""} \
      ~{if defined(oOCovPlotNormed) then ("--o_covplot_normed " +  '"' + oOCovPlotNormed + '"') else ""} \
      ~{if defined(oOCov) then ("--o_cov " +  '"' + oOCov + '"') else ""} \
      ~{if defined(oOIdx) then ("--o_idx " +  '"' + oOIdx + '"') else ""} \
      ~{if defined(oORna) then ("--o_rna " +  '"' + oORna + '"') else ""} \
      ~{if defined(strainStrainHitGenesPerc) then ("--strain_hit_genes_perc " +  '"' + strainStrainHitGenesPerc + '"') else ""} \
      ~{if defined(iICov) then ("--i_cov " +  '"' + iICov + '"') else ""} \
      ~{if defined(numNumGenomes) then ("--num_genomes " +  '"' + numNumGenomes + '"') else ""} \
      ~{if defined(genomeGenomeAvgLength) then ("--genome_avg_length " +  '"' + genomeGenomeAvgLength + '"') else ""} \
      ~{true="--add_strains" false="" addAddStrains} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}