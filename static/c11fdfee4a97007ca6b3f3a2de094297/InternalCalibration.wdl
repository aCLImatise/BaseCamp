version 1.0

task InternalCalibration {
  input {
    File inIn
    File outOut
    File rRScriptExecutable
    Boolean ppmPpmMatchTolerance
    Boolean calCal
    Boolean calCal
    Boolean calCal
    Boolean calCal
    Boolean calCal
    Boolean calCal
    Boolean calCal
    String msMsLevel
    Boolean rtRtChunking
    Boolean ransacRansac
    Boolean ransacRansac
    Boolean ransacRansac
    Boolean ransacRansac
    Boolean goodnessGoodness
    Boolean goodnessGoodness
    Boolean qualityQualityControl
    Boolean qualityQualityControl
    Boolean qualityQualityControl
    Boolean qualityQualityControl
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    InternalCalibration \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(rRScriptExecutable) then ("-rscript_executable " +  '"' + rRScriptExecutable + '"') else ""} \
      ~{true="-ppm_match_tolerance" false="" ppmPpmMatchTolerance} \
      ~{true="-cal" false="" calCal} \
      ~{true="-cal" false="" calCal} \
      ~{true="-cal" false="" calCal} \
      ~{true="-cal" false="" calCal} \
      ~{true="-cal" false="" calCal} \
      ~{true="-cal" false="" calCal} \
      ~{true="-cal" false="" calCal} \
      ~{if defined(msMsLevel) then ("-ms_level " +  '"' + msMsLevel + '"') else ""} \
      ~{true="-RT_chunking" false="" rtRtChunking} \
      ~{true="-RANSAC" false="" ransacRansac} \
      ~{true="-RANSAC" false="" ransacRansac} \
      ~{true="-RANSAC" false="" ransacRansac} \
      ~{true="-RANSAC" false="" ransacRansac} \
      ~{true="-goodness" false="" goodnessGoodness} \
      ~{true="-goodness" false="" goodnessGoodness} \
      ~{true="-quality_control" false="" qualityQualityControl} \
      ~{true="-quality_control" false="" qualityQualityControl} \
      ~{true="-quality_control" false="" qualityQualityControl} \
      ~{true="-quality_control" false="" qualityQualityControl} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}