version 1.0

task Sc3Sc3Prepare.R {
  input {
    String inputInputObjectFile
    String geneGeneFilter
    String pctPctDropoutMin
    String pctPctDropoutMax
    String dDRegionMin
    String dDRegionMax
    String svmSvmNumCells
    String svmSvmTrainInds
    String svmSvmMax
    String nNCores
    String randRandSeed
    String kKMeansNStart
    String kKMeansIterMax
    String outputOutputObjectFile
  }
  command <<<
    sc3-sc3-prepare.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(geneGeneFilter) then ("--gene-filter " +  '"' + geneGeneFilter + '"') else ""} \
      ~{if defined(pctPctDropoutMin) then ("--pct-dropout-min " +  '"' + pctPctDropoutMin + '"') else ""} \
      ~{if defined(pctPctDropoutMax) then ("--pct-dropout-max " +  '"' + pctPctDropoutMax + '"') else ""} \
      ~{if defined(dDRegionMin) then ("--d-region-min " +  '"' + dDRegionMin + '"') else ""} \
      ~{if defined(dDRegionMax) then ("--d-region-max " +  '"' + dDRegionMax + '"') else ""} \
      ~{if defined(svmSvmNumCells) then ("--svm-num-cells " +  '"' + svmSvmNumCells + '"') else ""} \
      ~{if defined(svmSvmTrainInds) then ("--svm-train-inds " +  '"' + svmSvmTrainInds + '"') else ""} \
      ~{if defined(svmSvmMax) then ("--svm-max " +  '"' + svmSvmMax + '"') else ""} \
      ~{if defined(nNCores) then ("--n-cores " +  '"' + nNCores + '"') else ""} \
      ~{if defined(randRandSeed) then ("--rand-seed " +  '"' + randRandSeed + '"') else ""} \
      ~{if defined(kKMeansNStart) then ("--kmeans-nstart " +  '"' + kKMeansNStart + '"') else ""} \
      ~{if defined(kKMeansIterMax) then ("--kmeans-iter-max " +  '"' + kKMeansIterMax + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}