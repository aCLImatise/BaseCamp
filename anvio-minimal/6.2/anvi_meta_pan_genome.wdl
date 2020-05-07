version 1.0

task AnviMetaPanGenome {
  input {
    String panPanDb
    String genomesGenomesStorage
    File internalInternalGenomes
    Float fractionFractionOfMedianCoverage
    Float minMinDetection
  }
  command <<<
    anvi-meta-pan-genome \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(genomesGenomesStorage) then ("--genomes-storage " +  '"' + genomesGenomesStorage + '"') else ""} \
      ~{if defined(internalInternalGenomes) then ("--internal-genomes " +  '"' + internalInternalGenomes + '"') else ""} \
      ~{if defined(fractionFractionOfMedianCoverage) then ("--fraction-of-median-coverage " +  '"' + fractionFractionOfMedianCoverage + '"') else ""} \
      ~{if defined(minMinDetection) then ("--min-detection " +  '"' + minMinDetection + '"') else ""}
  >>>
}