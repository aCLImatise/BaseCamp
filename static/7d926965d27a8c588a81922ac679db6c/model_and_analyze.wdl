version 1.0

task ModelAndAnalyze.py {
  input {
    File cfgCfg
    Boolean analyzeAnalyzeOnly
    Boolean optimizeOptimizeOnly
    Boolean modelModelOnly
    Boolean tadTadOnly
    Int nNCpus
    File rootRootPath
    Array[File]+ dataData
    Array[File]+ biasesBiases
    Array[String]+ xXName
    Array[File]+ normNorm
    Float percPercZeros
    Int minMinCount
    String crmCrm
    Int begBeg
    Int chromChromStart
    Int endEnd
    Int resRes
    String figFigFormat
    File outdirOutdir
    Boolean tadTad
    Boolean centromereCentromere
    Array[Int]+ groupGroup
    String maxMaxDist
    String upUpFreq
    String lowLowFreq
    String scaleScale
    String dDCutOff
    Int nNModelsOpt
    Int nNKeepOpt
    Boolean forceForceOpt
    Int nNModelsMod
    Int nNKeepMod
    Int seedSeed
    String speciesSpecies
    String cellCell
    String expExpType
    String assemblyAssembly
    String enzymeEnzyme
    String identifierIdentifier
    String projectProject
    Array[Int]+ analyzeAnalyze
    Boolean notNotWriteCmm
    Boolean notNotWriteXyz
    Boolean notNotWriteJson
  }
  command <<<
    model_and_analyze.py \
      ~{if defined(cfgCfg) then ("--cfg " +  '"' + cfgCfg + '"') else ""} \
      ~{true="--analyze_only" false="" analyzeAnalyzeOnly} \
      ~{true="--optimize_only" false="" optimizeOptimizeOnly} \
      ~{true="--model_only" false="" modelModelOnly} \
      ~{true="--tad_only" false="" tadTadOnly} \
      ~{if defined(nNCpus) then ("--ncpus " +  '"' + nNCpus + '"') else ""} \
      ~{if defined(rootRootPath) then ("--root_path " +  '"' + rootRootPath + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(biasesBiases) then ("--biases " +  '"' + biasesBiases + '"') else ""} \
      ~{if defined(xXName) then ("--xname " +  '"' + xXName + '"') else ""} \
      ~{if defined(normNorm) then ("--norm " +  '"' + normNorm + '"') else ""} \
      ~{if defined(percPercZeros) then ("--perc_zeros " +  '"' + percPercZeros + '"') else ""} \
      ~{if defined(minMinCount) then ("--min_count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(crmCrm) then ("--crm " +  '"' + crmCrm + '"') else ""} \
      ~{if defined(begBeg) then ("--beg " +  '"' + begBeg + '"') else ""} \
      ~{if defined(chromChromStart) then ("--chrom_start " +  '"' + chromChromStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(resRes) then ("--res " +  '"' + resRes + '"') else ""} \
      ~{if defined(figFigFormat) then ("--fig_format " +  '"' + figFigFormat + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--tad" false="" tadTad} \
      ~{true="--centromere" false="" centromereCentromere} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--maxdist " +  '"' + maxMaxDist + '"') else ""} \
      ~{if defined(upUpFreq) then ("--upfreq " +  '"' + upUpFreq + '"') else ""} \
      ~{if defined(lowLowFreq) then ("--lowfreq " +  '"' + lowLowFreq + '"') else ""} \
      ~{if defined(scaleScale) then ("--scale " +  '"' + scaleScale + '"') else ""} \
      ~{if defined(dDCutOff) then ("--dcutoff " +  '"' + dDCutOff + '"') else ""} \
      ~{if defined(nNModelsOpt) then ("--nmodels_opt " +  '"' + nNModelsOpt + '"') else ""} \
      ~{if defined(nNKeepOpt) then ("--nkeep_opt " +  '"' + nNKeepOpt + '"') else ""} \
      ~{true="--force_opt" false="" forceForceOpt} \
      ~{if defined(nNModelsMod) then ("--nmodels_mod " +  '"' + nNModelsMod + '"') else ""} \
      ~{if defined(nNKeepMod) then ("--nkeep_mod " +  '"' + nNKeepMod + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(cellCell) then ("--cell " +  '"' + cellCell + '"') else ""} \
      ~{if defined(expExpType) then ("--exp_type " +  '"' + expExpType + '"') else ""} \
      ~{if defined(assemblyAssembly) then ("--assembly " +  '"' + assemblyAssembly + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("--enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(identifierIdentifier) then ("--identifier " +  '"' + identifierIdentifier + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(analyzeAnalyze) then ("--analyze " +  '"' + analyzeAnalyze + '"') else ""} \
      ~{true="--not_write_cmm" false="" notNotWriteCmm} \
      ~{true="--not_write_xyz" false="" notNotWriteXyz} \
      ~{true="--not_write_json" false="" notNotWriteJson}
  >>>
}