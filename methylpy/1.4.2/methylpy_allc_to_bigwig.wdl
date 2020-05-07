version 1.0

task MethylpyAllcToBigwig {
  input {
    String allAllCFile
    String outputOutputFile
    String refRefFastA
    Array[String]+ mcMcType
    String binBinSize
    Int minMinBinSites
    Int minMinBinCov
    Int minMinSiteCov
    Int maxMaxSiteCov
    File pathPathToWigToBigwig
    File pathPathToSamTools
    String removeRemoveChrPrefix
    String addAddChrPrefix
  }
  command <<<
    methylpy allc-to-bigwig \
      ~{if defined(allAllCFile) then ("--allc-file " +  '"' + allAllCFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(refRefFastA) then ("--ref-fasta " +  '"' + refRefFastA + '"') else ""} \
      ~{if defined(mcMcType) then ("--mc-type " +  '"' + mcMcType + '"') else ""} \
      ~{if defined(binBinSize) then ("--bin-size " +  '"' + binBinSize + '"') else ""} \
      ~{if defined(minMinBinSites) then ("--min-bin-sites " +  '"' + minMinBinSites + '"') else ""} \
      ~{if defined(minMinBinCov) then ("--min-bin-cov " +  '"' + minMinBinCov + '"') else ""} \
      ~{if defined(minMinSiteCov) then ("--min-site-cov " +  '"' + minMinSiteCov + '"') else ""} \
      ~{if defined(maxMaxSiteCov) then ("--max-site-cov " +  '"' + maxMaxSiteCov + '"') else ""} \
      ~{if defined(pathPathToWigToBigwig) then ("--path-to-wigToBigWig " +  '"' + pathPathToWigToBigwig + '"') else ""} \
      ~{if defined(pathPathToSamTools) then ("--path-to-samtools " +  '"' + pathPathToSamTools + '"') else ""} \
      ~{if defined(removeRemoveChrPrefix) then ("--remove-chr-prefix " +  '"' + removeRemoveChrPrefix + '"') else ""} \
      ~{if defined(addAddChrPrefix) then ("--add-chr-prefix " +  '"' + addAddChrPrefix + '"') else ""}
  >>>
}