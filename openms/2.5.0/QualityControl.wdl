version 1.0

task QualityControl {
  input {
    File? in_cm
    String? in_raw
    String? in_post_fdr
    File? out
    File? out_cm
    String? out_feat
    File? in_contaminants
    File? in_traf_o
    Boolean? ms_two_id_rate
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    QualityControl \
      ~{if defined(in_cm) then ("-in_cm " +  '"' + in_cm + '"') else ""} \
      ~{if defined(in_raw) then ("-in_raw " +  '"' + in_raw + '"') else ""} \
      ~{if defined(in_post_fdr) then ("-in_postFDR " +  '"' + in_post_fdr + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(out_cm) then ("-out_cm " +  '"' + out_cm + '"') else ""} \
      ~{if defined(out_feat) then ("-out_feat " +  '"' + out_feat + '"') else ""} \
      ~{if defined(in_contaminants) then ("-in_contaminants " +  '"' + in_contaminants + '"') else ""} \
      ~{if defined(in_traf_o) then ("-in_trafo " +  '"' + in_traf_o + '"') else ""} \
      ~{if (ms_two_id_rate) then "-MS2_id_rate" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in_cm: "*                         ConsensusXML input, generated by FeatureLinker. (valid formats: 'consensusXML')"
    in_raw: "MzML input (after InternalCalibration, if available) (valid formats: 'mzML')"
    in_post_fdr: "FeatureXMLs after FDR filtering (valid formats: 'featureXML')"
    out: "*                           Output mzTab with QC information (valid formats: 'mzTab')"
    out_cm: "ConsensusXML with QC information (as metavalues) (valid formats: 'consensusXML')"
    out_feat: "FeatureXMLs with QC information (as metavalues) (valid formats: 'featureXML')"
    in_contaminants: "Proteins considered contaminants (valid formats: 'fasta')"
    in_traf_o: "TrafoXMLs from MapAligners (valid formats: 'trafoXML')"
    ms_two_id_rate: ":force_no_fdr              Forces the metric to run if FDR is missing (accepts all pep_ids as target hits)."
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}