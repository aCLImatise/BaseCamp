version 1.0

task Ericscript.pl {
  input {
    String dbDbFolder
    Boolean refidRefid
    Boolean printPrintDb
    Boolean ensEnsVersion
    String outputOutputFolder
    Int readReadLength
    Boolean refidRefid
    Boolean verboseVerbose
    Boolean inInSize
    Boolean sdSdInSize
    Boolean nNGeneFusion
    Boolean minMinCov
    Boolean maxMaxCov
    Boolean nNSims
    Boolean beBe
    Boolean ieIe
    Boolean dbDbFolder
    Boolean backgroundBackground1
    Boolean backgroundBackground2
    Boolean nNReadsBackground
    String outputOutputFolder
    String resultsResultsFolder
    String dataDataFolder
    String algoAlgoName
    String datasetDataset
    Int readReadLength
    Int normNormRoc
    Boolean manMan
    Boolean verboseVerbose
    Boolean sampleSampleName
    Boolean outputOutputFolder
    Boolean dbDbFolder
    Boolean minMinReads
    Boolean nNTrim
    Boolean nNThreads
    Boolean mapqMapq
    Boolean removeRemove
    Boolean checkCheckDb
    Boolean downDownDb
    Boolean refidRefid
    Boolean ensEnsVersion
    Boolean printPrintDb
    Boolean demoDemo
  }
  command <<<
    ericscript.pl \
      ~{if defined(dbDbFolder) then ("--dbfolder " +  '"' + dbDbFolder + '"') else ""} \
      ~{true="--refid" false="" refidRefid} \
      ~{true="--printdb" false="" printPrintDb} \
      ~{true="--ensversion" false="" ensEnsVersion} \
      ~{if defined(outputOutputFolder) then ("--outputfolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(readReadLength) then ("--readlength " +  '"' + readReadLength + '"') else ""} \
      ~{true="--refid" false="" refidRefid} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--insize" false="" inInSize} \
      ~{true="--sd_insize" false="" sdSdInSize} \
      ~{true="--ngenefusion" false="" nNGeneFusion} \
      ~{true="--min_cov" false="" minMinCov} \
      ~{true="--max_cov" false="" maxMaxCov} \
      ~{true="--nsims" false="" nNSims} \
      ~{true="--be" false="" beBe} \
      ~{true="--ie" false="" ieIe} \
      ~{true="--dbfolder" false="" dbDbFolder} \
      ~{true="--background_1" false="" backgroundBackground1} \
      ~{true="--background_2" false="" backgroundBackground2} \
      ~{true="--nreads_background" false="" nNReadsBackground} \
      ~{if defined(outputOutputFolder) then ("--outputfolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(resultsResultsFolder) then ("--resultsfolder " +  '"' + resultsResultsFolder + '"') else ""} \
      ~{if defined(dataDataFolder) then ("--datafolder " +  '"' + dataDataFolder + '"') else ""} \
      ~{if defined(algoAlgoName) then ("--algoname " +  '"' + algoAlgoName + '"') else ""} \
      ~{if defined(datasetDataset) then ("--dataset " +  '"' + datasetDataset + '"') else ""} \
      ~{if defined(readReadLength) then ("--readlength " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(normNormRoc) then ("--normroc " +  '"' + normNormRoc + '"') else ""} \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--samplename" false="" sampleSampleName} \
      ~{true="--outputfolder" false="" outputOutputFolder} \
      ~{true="--dbfolder" false="" dbDbFolder} \
      ~{true="--minreads" false="" minMinReads} \
      ~{true="-ntrim" false="" nNTrim} \
      ~{true="--nthreads" false="" nNThreads} \
      ~{true="--MAPQ" false="" mapqMapq} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--checkdb" false="" checkCheckDb} \
      ~{true="--downdb" false="" downDownDb} \
      ~{true="--refid" false="" refidRefid} \
      ~{true="--ensversion" false="" ensEnsVersion} \
      ~{true="--printdb" false="" printPrintDb} \
      ~{true="--demo" false="" demoDemo}
  >>>
}