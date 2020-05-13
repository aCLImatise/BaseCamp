version 1.0

task ExpressBetaDiversity {
  input {
    Boolean listListCalc
    Boolean unitUnitTests
    Boolean treeTreeFile
    String seqSeqCountFile
    Boolean outputOutputPrefix
    Boolean clusteringClustering
    Boolean jackknifeJackknife
    Boolean seqsSeqsToDraw
    Boolean sampleSampleSize
    Boolean calculatorCalculator
    Boolean weightedWeighted
    Boolean mrcaMrca
    Boolean strictStrictMrca
    Boolean countCount
    Boolean maxMaxDataVecs
    Boolean allAll
    Boolean thresholdThreshold
    Boolean outputOutputFile
    Boolean verboseVerbose
  }
  command <<<
    ExpressBetaDiversity \
      ~{true="--list-calc" false="" listListCalc} \
      ~{true="--unit-tests" false="" unitUnitTests} \
      ~{true="--tree-file" false="" treeTreeFile} \
      ~{if defined(seqSeqCountFile) then ("--seq-count-file " +  '"' + seqSeqCountFile + '"') else ""} \
      ~{true="--output-prefix" false="" outputOutputPrefix} \
      ~{true="--clustering" false="" clusteringClustering} \
      ~{true="--jackknife" false="" jackknifeJackknife} \
      ~{true="--seqs-to-draw" false="" seqsSeqsToDraw} \
      ~{true="--sample-size" false="" sampleSampleSize} \
      ~{true="--calculator" false="" calculatorCalculator} \
      ~{true="--weighted" false="" weightedWeighted} \
      ~{true="--mrca" false="" mrcaMrca} \
      ~{true="--strict-mrca" false="" strictStrictMrca} \
      ~{true="--count" false="" countCount} \
      ~{true="--max-data-vecs" false="" maxMaxDataVecs} \
      ~{true="--all" false="" allAll} \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}