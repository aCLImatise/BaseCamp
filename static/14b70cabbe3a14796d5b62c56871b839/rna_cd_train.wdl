version 1.0

task RnaCdTrain {
  input {
    Int chunksizeChunksize
    String contigContig
    Directory positivesPositivesDir
    Directory negativesNegativesDir
    File positivesPositivesList
    File negativesNegativesList
    Int crossCrossValidations
    Int verbosityVerbosity
    Int coresCores
    File plotPlotOut
    File modelModelOut
    String? optionsOptions
  }
  command <<<
    rna_cd-train \
      ~{optionsOptions} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(contigContig) then ("--contig " +  '"' + contigContig + '"') else ""} \
      ~{if defined(positivesPositivesDir) then ("--positives-dir " +  '"' + positivesPositivesDir + '"') else ""} \
      ~{if defined(negativesNegativesDir) then ("--negatives-dir " +  '"' + negativesNegativesDir + '"') else ""} \
      ~{if defined(positivesPositivesList) then ("--positives-list " +  '"' + positivesPositivesList + '"') else ""} \
      ~{if defined(negativesNegativesList) then ("--negatives-list " +  '"' + negativesNegativesList + '"') else ""} \
      ~{if defined(crossCrossValidations) then ("--cross-validations " +  '"' + crossCrossValidations + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(plotPlotOut) then ("--plot-out " +  '"' + plotPlotOut + '"') else ""} \
      ~{if defined(modelModelOut) then ("--model-out " +  '"' + modelModelOut + '"') else ""}
  >>>
}