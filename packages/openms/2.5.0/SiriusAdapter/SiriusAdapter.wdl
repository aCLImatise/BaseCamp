version 1.0

task SiriusAdapter {
  input {
    File? executable
    File? in
    File? in_feature_info
    File? out_sirius
    File? out_finger_id
    File? out_ms
    Directory? out_workspace_directory
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    SiriusAdapter \
      ~{if defined(executable) then ("-executable " +  '"' + executable + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_feature_info) then ("-in_featureinfo " +  '"' + in_feature_info + '"') else ""} \
      ~{if defined(out_sirius) then ("-out_sirius " +  '"' + out_sirius + '"') else ""} \
      ~{if defined(out_finger_id) then ("-out_fingerid " +  '"' + out_finger_id + '"') else ""} \
      ~{if defined(out_ms) then ("-out_ms " +  '"' + out_ms + '"') else ""} \
      ~{if defined(out_workspace_directory) then ("-out_workspace_directory " +  '"' + out_workspace_directory + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    executable: "The Sirius executable. Provide a full or relative path, or make sure it can be found in your PATH environment."
    in: "*                                          MzML Input file (valid formats: 'mzML')"
    in_feature_info: "FeatureXML input with feature and adduct information (valid formats: 'featureXML')"
    out_sirius: "MzTab Output file for SiriusAdapter results (valid formats: 'mzTab')"
    out_finger_id: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will search for a molecular structure using CSI:FingerID after determining the sum formula (valid formats: 'mzTab')"
    out_ms: "Internal SIRIUS .ms format after OpenMS preprocessing (valid formats: 'ms')"
    out_workspace_directory: "Output directory for SIRIUS workspace"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out_sirius = "${in_out_sirius}"
    File out_out_finger_id = "${in_out_finger_id}"
    Directory out_out_workspace_directory = "${in_out_workspace_directory}"
  }
}