version 1.0

task Dca {
  input {
    String normNormType
    Boolean transposeTranspose
    Boolean testTestSplit
    String typeType
    String threadsThreads
    String batchBatchSize
    Boolean sizeSizeFactors
    Boolean noNoSizeFactors
    Boolean normNormInput
    Boolean noNoNormInput
    Boolean loginLoginPut
    Boolean noNoLoginPut
    String dropoutDropoutRate
    Boolean batchBatchNorm
    Boolean noNoBatchNorm
    String l2L2
    String l1L1
    String l2encL2enc
    String l1encL1enc
    String ridgeRidge
    String gradGradClip
    String activationActivation
    String optimizerOptimizer
    String inInIt
    String epochsEpochs
    String earlyEarlyStop
    String reduceReduceLr
    String hiddenHiddenSize
    String inputInputDropout
    String learningLearningRate
    Boolean saveSaveWeights
    Boolean noNoSaveWeights
    Boolean hyperHyper
    String hyperHyperN
    String hyperHyperEpoch
    Boolean debugDebug
    Boolean tensorTensorBoard
    String deDeNoiseSubset
    String? inputInput
    String? outputOutputDir
  }
  command <<<
    dca \
      ~{inputInput} \
      ~{if defined(normNormType) then ("--normtype " +  '"' + normNormType + '"') else ""} \
      ~{true="--transpose" false="" transposeTranspose} \
      ~{true="--testsplit" false="" testTestSplit} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batchsize " +  '"' + batchBatchSize + '"') else ""} \
      ~{true="--sizefactors" false="" sizeSizeFactors} \
      ~{true="--nosizefactors" false="" noNoSizeFactors} \
      ~{true="--norminput" false="" normNormInput} \
      ~{true="--nonorminput" false="" noNoNormInput} \
      ~{true="--loginput" false="" loginLoginPut} \
      ~{true="--nologinput" false="" noNoLoginPut} \
      ~{if defined(dropoutDropoutRate) then ("--dropoutrate " +  '"' + dropoutDropoutRate + '"') else ""} \
      ~{true="--batchnorm" false="" batchBatchNorm} \
      ~{true="--nobatchnorm" false="" noNoBatchNorm} \
      ~{if defined(l2L2) then ("--l2 " +  '"' + l2L2 + '"') else ""} \
      ~{if defined(l1L1) then ("--l1 " +  '"' + l1L1 + '"') else ""} \
      ~{if defined(l2encL2enc) then ("--l2enc " +  '"' + l2encL2enc + '"') else ""} \
      ~{if defined(l1encL1enc) then ("--l1enc " +  '"' + l1encL1enc + '"') else ""} \
      ~{if defined(ridgeRidge) then ("--ridge " +  '"' + ridgeRidge + '"') else ""} \
      ~{if defined(gradGradClip) then ("--gradclip " +  '"' + gradGradClip + '"') else ""} \
      ~{if defined(activationActivation) then ("--activation " +  '"' + activationActivation + '"') else ""} \
      ~{if defined(optimizerOptimizer) then ("--optimizer " +  '"' + optimizerOptimizer + '"') else ""} \
      ~{if defined(inInIt) then ("--init " +  '"' + inInIt + '"') else ""} \
      ~{if defined(epochsEpochs) then ("--epochs " +  '"' + epochsEpochs + '"') else ""} \
      ~{if defined(earlyEarlyStop) then ("--earlystop " +  '"' + earlyEarlyStop + '"') else ""} \
      ~{if defined(reduceReduceLr) then ("--reducelr " +  '"' + reduceReduceLr + '"') else ""} \
      ~{if defined(hiddenHiddenSize) then ("--hiddensize " +  '"' + hiddenHiddenSize + '"') else ""} \
      ~{if defined(inputInputDropout) then ("--inputdropout " +  '"' + inputInputDropout + '"') else ""} \
      ~{if defined(learningLearningRate) then ("--learningrate " +  '"' + learningLearningRate + '"') else ""} \
      ~{true="--saveweights" false="" saveSaveWeights} \
      ~{true="--no-saveweights" false="" noNoSaveWeights} \
      ~{true="--hyper" false="" hyperHyper} \
      ~{if defined(hyperHyperN) then ("--hypern " +  '"' + hyperHyperN + '"') else ""} \
      ~{if defined(hyperHyperEpoch) then ("--hyperepoch " +  '"' + hyperHyperEpoch + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--tensorboard" false="" tensorTensorBoard} \
      ~{if defined(deDeNoiseSubset) then ("--denoisesubset " +  '"' + deDeNoiseSubset + '"') else ""} \
      ~{outputOutputDir}
  >>>
}