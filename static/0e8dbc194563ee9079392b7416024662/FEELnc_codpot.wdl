version 1.0

task FEELncCodpot.pl {
  input {
    Boolean manMan
    Boolean verbosityVerbosity
    File inInFile
    File mrnaMrnaFile
    String genomeGenome
    File lLNcrnaFile
    Boolean biotypeBiotype
    String numNumTx
    Boolean rfRfCut
    String spethSpethRes
    Boolean kmKmEr
    String outOutName
    Boolean outdirOutdir
    Boolean modeMode
    Boolean sizeSizeInter
    Boolean learnLearnOrfType
    Boolean testTestOrfType
    Boolean nNTree
    Boolean percentagePercentage
    Boolean keepKeepTmp
    Boolean verbosityVerbosity
    Boolean seedSeed
    String toTo
  }
  command <<<
    FEELnc_codpot.pl \
      ~{true="--man" false="" manMan} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(mrnaMrnaFile) then ("--mRNAfile " +  '"' + mrnaMrnaFile + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(lLNcrnaFile) then ("--lncRNAfile " +  '"' + lLNcrnaFile + '"') else ""} \
      ~{true="--biotype" false="" biotypeBiotype} \
      ~{if defined(numNumTx) then ("--numtx " +  '"' + numNumTx + '"') else ""} \
      ~{true="--rfcut" false="" rfRfCut} \
      ~{if defined(spethSpethRes) then ("--spethres " +  '"' + spethSpethRes + '"') else ""} \
      ~{true="--kmer" false="" kmKmEr} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--mode" false="" modeMode} \
      ~{true="--sizeinter" false="" sizeSizeInter} \
      ~{true="--learnorftype" false="" learnLearnOrfType} \
      ~{true="--testorftype" false="" testTestOrfType} \
      ~{true="--ntree" false="" nNTree} \
      ~{true="--percentage" false="" percentagePercentage} \
      ~{true="--keeptmp" false="" keepKeepTmp} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{true="--seed" false="" seedSeed} \
      ~{if defined(toTo) then ("-to " +  '"' + toTo + '"') else ""}
  >>>
}