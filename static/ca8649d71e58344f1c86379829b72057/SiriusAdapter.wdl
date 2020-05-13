version 1.0

task SiriusAdapter {
  input {
    String executableExecutable
    File inIn
    File inInFeatureInfo
    File outOutSirius
    File outOutFingerId
    String filterFilterByNumMassTraces
    Boolean featureFeatureOnly
    String precursorPrecursorMzTolerance
    String precursorPrecursorMzToleranceUnit
    String precursorPrecursorRtTolerance
    String profileProfile
    String candidatesCandidates
    String databaseDatabase
    String noiseNoise
    String ppmPpmMax
    String isotopeIsotope
    String elementsElements
    String compoundCompoundTimeout
    String treeTreeTimeout
    String topTopNHits
    Boolean autoAutoCharge
    Boolean ionIonTree
    Boolean noNoRecalibration
    Boolean mostMostIntenseMs2
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SiriusAdapter \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInFeatureInfo) then ("-in_featureinfo " +  '"' + inInFeatureInfo + '"') else ""} \
      ~{if defined(outOutSirius) then ("-out_sirius " +  '"' + outOutSirius + '"') else ""} \
      ~{if defined(outOutFingerId) then ("-out_fingerid " +  '"' + outOutFingerId + '"') else ""} \
      ~{if defined(filterFilterByNumMassTraces) then ("-filter_by_num_masstraces " +  '"' + filterFilterByNumMassTraces + '"') else ""} \
      ~{true="-feature_only" false="" featureFeatureOnly} \
      ~{if defined(precursorPrecursorMzTolerance) then ("-precursor_mz_tolerance " +  '"' + precursorPrecursorMzTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorMzToleranceUnit) then ("-precursor_mz_tolerance_unit " +  '"' + precursorPrecursorMzToleranceUnit + '"') else ""} \
      ~{if defined(precursorPrecursorRtTolerance) then ("-precursor_rt_tolerance " +  '"' + precursorPrecursorRtTolerance + '"') else ""} \
      ~{if defined(profileProfile) then ("-profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(candidatesCandidates) then ("-candidates " +  '"' + candidatesCandidates + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(noiseNoise) then ("-noise " +  '"' + noiseNoise + '"') else ""} \
      ~{if defined(ppmPpmMax) then ("-ppm_max " +  '"' + ppmPpmMax + '"') else ""} \
      ~{if defined(isotopeIsotope) then ("-isotope " +  '"' + isotopeIsotope + '"') else ""} \
      ~{if defined(elementsElements) then ("-elements " +  '"' + elementsElements + '"') else ""} \
      ~{if defined(compoundCompoundTimeout) then ("-compound_timeout " +  '"' + compoundCompoundTimeout + '"') else ""} \
      ~{if defined(treeTreeTimeout) then ("-tree_timeout " +  '"' + treeTreeTimeout + '"') else ""} \
      ~{if defined(topTopNHits) then ("-top_n_hits " +  '"' + topTopNHits + '"') else ""} \
      ~{true="-auto_charge" false="" autoAutoCharge} \
      ~{true="-ion_tree" false="" ionIonTree} \
      ~{true="-no_recalibration" false="" noNoRecalibration} \
      ~{true="-most_intense_ms2" false="" mostMostIntenseMs2} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}