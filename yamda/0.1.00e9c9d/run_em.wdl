version 1.0

task RunEm.py {
  input {
    String inputInput
    String inputInput2
    String batchBatchSize
    String alphaAlpha
    Boolean revRevComp
    String modelModel
    Boolean eraseEraseWhole
    String fudgeFudge
    String widthWidth
    String halfHalfLength
    String nNMotifs
    Int minMinSites
    Int maxMaxSites
    String nNSeeds
    Int maxiterMaxiter
    String toleranceTolerance
    Boolean noNoCuda
    String seedSeed
    String outputOutputDir
    String outputOutputDirc
  }
  command <<<
    run_em.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInput2) then ("--input2 " +  '"' + inputInput2 + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batchsize " +  '"' + batchBatchSize + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{true="--revcomp" false="" revRevComp} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{true="--erasewhole" false="" eraseEraseWhole} \
      ~{if defined(fudgeFudge) then ("--fudge " +  '"' + fudgeFudge + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(halfHalfLength) then ("--halflength " +  '"' + halfHalfLength + '"') else ""} \
      ~{if defined(nNMotifs) then ("--nmotifs " +  '"' + nNMotifs + '"') else ""} \
      ~{if defined(minMinSites) then ("--minsites " +  '"' + minMinSites + '"') else ""} \
      ~{if defined(maxMaxSites) then ("--maxsites " +  '"' + maxMaxSites + '"') else ""} \
      ~{if defined(nNSeeds) then ("--nseeds " +  '"' + nNSeeds + '"') else ""} \
      ~{if defined(maxiterMaxiter) then ("--maxiter " +  '"' + maxiterMaxiter + '"') else ""} \
      ~{if defined(toleranceTolerance) then ("--tolerance " +  '"' + toleranceTolerance + '"') else ""} \
      ~{true="--no_cuda" false="" noNoCuda} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputdir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputDirc) then ("--outputdirc " +  '"' + outputOutputDirc + '"') else ""}
  >>>
}