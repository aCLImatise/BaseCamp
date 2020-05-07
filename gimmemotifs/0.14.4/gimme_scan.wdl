version 1.0

task GimmeScan {
  input {
    String genomeGenome
    String pfmPfmFile
    Boolean fF
    Boolean bB
    Boolean cC
    String nNReport
    Boolean norcNorc
    Boolean bedBed
    Boolean tableTable
    Boolean scoreScoreTable
    Boolean zscoreZscore
    Boolean gcGc
    Int nNThreads
    String? inputInputFile
  }
  command <<<
    gimme scan \
      ~{inputInputFile} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(pfmPfmFile) then ("--pfmfile " +  '"' + pfmPfmFile + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-B" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{if defined(nNReport) then ("--nreport " +  '"' + nNReport + '"') else ""} \
      ~{true="--norc" false="" norcNorc} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--table" false="" tableTable} \
      ~{true="--score_table" false="" scoreScoreTable} \
      ~{true="--zscore" false="" zscoreZscore} \
      ~{true="--gc" false="" gcGc} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""}
  >>>
}