version 1.0

task Cmfinder04.pl {
  input {
    String mincMincAndScoreInFinal
    Boolean filterFilterNonFrag
    Boolean columnColumnOnlyBasePairProbs
    File saveSaveTimer
    String cpuCpu
    Boolean allAllCpus
    Boolean canCanDsParallel
    String outfileOutfileSuffix
    Boolean versionVersion
  }
  command <<<
    cmfinder04.pl \
      ~{if defined(mincMincAndScoreInFinal) then ("-minCandScoreInFinal " +  '"' + mincMincAndScoreInFinal + '"') else ""} \
      ~{true="-filterNonFrag" false="" filterFilterNonFrag} \
      ~{true="-columnOnlyBasePairProbs" false="" columnColumnOnlyBasePairProbs} \
      ~{if defined(saveSaveTimer) then ("-saveTimer " +  '"' + saveSaveTimer + '"') else ""} \
      ~{if defined(cpuCpu) then ("-cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="-allCpus" false="" allAllCpus} \
      ~{true="-candsParallel" false="" canCanDsParallel} \
      ~{if defined(outfileOutfileSuffix) then ("-outFileSuffix " +  '"' + outfileOutfileSuffix + '"') else ""} \
      ~{true="-version" false="" versionVersion}
  >>>
}