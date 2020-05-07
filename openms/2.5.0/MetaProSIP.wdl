version 1.0

task MetaProSIP {
  input {
    File inInMzmL
    File inInFastA
    File outOutCsv
    File outOutPeptideCentricCsv
    File inInFeatureXml
    File rRExecutable
    String mzMzTolerancePpm
    String rtRtToleranceS
    String intensityIntensityThreshold
    String correlationCorrelationThreshold
    String xicXicThreshold
    String decompositionDecompositionThreshold
    String weightWeightMergeWindow
    String plotPlotExtension
    Directory qcQcOutputDirectory
    String labelingLabelingElement
    Boolean useUseUnassignedIds
    Boolean useUseAveragInEIds
    Boolean reportReportNaturalPeptides
    Boolean filterFilterMonoIsotopic
    Boolean clusterCluster
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MetaProSIP \
      ~{if defined(inInMzmL) then ("-in_mzML " +  '"' + inInMzmL + '"') else ""} \
      ~{if defined(inInFastA) then ("-in_fasta " +  '"' + inInFastA + '"') else ""} \
      ~{if defined(outOutCsv) then ("-out_csv " +  '"' + outOutCsv + '"') else ""} \
      ~{if defined(outOutPeptideCentricCsv) then ("-out_peptide_centric_csv " +  '"' + outOutPeptideCentricCsv + '"') else ""} \
      ~{if defined(inInFeatureXml) then ("-in_featureXML " +  '"' + inInFeatureXml + '"') else ""} \
      ~{if defined(rRExecutable) then ("-r_executable " +  '"' + rRExecutable + '"') else ""} \
      ~{if defined(mzMzTolerancePpm) then ("-mz_tolerance_ppm " +  '"' + mzMzTolerancePpm + '"') else ""} \
      ~{if defined(rtRtToleranceS) then ("-rt_tolerance_s " +  '"' + rtRtToleranceS + '"') else ""} \
      ~{if defined(intensityIntensityThreshold) then ("-intensity_threshold " +  '"' + intensityIntensityThreshold + '"') else ""} \
      ~{if defined(correlationCorrelationThreshold) then ("-correlation_threshold " +  '"' + correlationCorrelationThreshold + '"') else ""} \
      ~{if defined(xicXicThreshold) then ("-xic_threshold " +  '"' + xicXicThreshold + '"') else ""} \
      ~{if defined(decompositionDecompositionThreshold) then ("-decomposition_threshold " +  '"' + decompositionDecompositionThreshold + '"') else ""} \
      ~{if defined(weightWeightMergeWindow) then ("-weight_merge_window " +  '"' + weightWeightMergeWindow + '"') else ""} \
      ~{if defined(plotPlotExtension) then ("-plot_extension " +  '"' + plotPlotExtension + '"') else ""} \
      ~{if defined(qcQcOutputDirectory) then ("-qc_output_directory " +  '"' + qcQcOutputDirectory + '"') else ""} \
      ~{if defined(labelingLabelingElement) then ("-labeling_element " +  '"' + labelingLabelingElement + '"') else ""} \
      ~{true="-use_unassigned_ids" false="" useUseUnassignedIds} \
      ~{true="-use_averagine_ids" false="" useUseAveragInEIds} \
      ~{true="-report_natural_peptides" false="" reportReportNaturalPeptides} \
      ~{true="-filter_monoisotopic" false="" filterFilterMonoIsotopic} \
      ~{true="-cluster" false="" clusterCluster} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}