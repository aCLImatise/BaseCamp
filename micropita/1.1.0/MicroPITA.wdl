version 1.0

task MicroPITA.py {
  input {
    String numNum
    String methodMethod
    String alphaAlpha
    String betaBeta
    String alphaAlphaMeta
    String betaBetaMatrix
    String treeTree
    String envrEnvr
    Boolean invertInvertDiversity
    String idId
    String lastLastMeta
    String featureFeatureMethod
    String targetsTargets
    String lastLastFeatureMetadata
    String labelLabel
    String stratifyStratify
    String delimDelim
    String featFeatDelim
    String loggingLogging
    String checkedChecked
    String logLogFile
    String supSupInputFile
    String suppSuppRedFile
  }
  command <<<
    MicroPITA.py \
      ~{if defined(numNum) then ("--num " +  '"' + numNum + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(alphaAlphaMeta) then ("--alphameta " +  '"' + alphaAlphaMeta + '"') else ""} \
      ~{if defined(betaBetaMatrix) then ("--betamatrix " +  '"' + betaBetaMatrix + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(envrEnvr) then ("--envr " +  '"' + envrEnvr + '"') else ""} \
      ~{true="--invertDiversity" false="" invertInvertDiversity} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{if defined(lastLastMeta) then ("--lastmeta " +  '"' + lastLastMeta + '"') else ""} \
      ~{if defined(featureFeatureMethod) then ("--feature_method " +  '"' + featureFeatureMethod + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(lastLastFeatureMetadata) then ("--lastFeatureMetadata " +  '"' + lastLastFeatureMetadata + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(stratifyStratify) then ("--stratify " +  '"' + stratifyStratify + '"') else ""} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{if defined(featFeatDelim) then ("--featdelim " +  '"' + featFeatDelim + '"') else ""} \
      ~{if defined(loggingLogging) then ("--logging " +  '"' + loggingLogging + '"') else ""} \
      ~{if defined(checkedChecked) then ("--checked " +  '"' + checkedChecked + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(supSupInputFile) then ("--supinputfile " +  '"' + supSupInputFile + '"') else ""} \
      ~{if defined(suppSuppRedFile) then ("--suppredfile " +  '"' + suppSuppRedFile + '"') else ""}
  >>>
}