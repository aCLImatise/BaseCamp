version 1.0

task PrecursorIonSelector {
  input {
    String? in
    String? out
    String? next_feat
    String? ids
    Int? num_precursors
    File? raw_data
    Boolean? load_preprocessing
    Boolean? store_preprocessing
    Boolean? simulation
    String? sim_results
    String? db_path
    String? rt_model
    String? dt_model
    String? fixed_modifications
    File? ini
    String? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    PrecursorIonSelector \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(next_feat) then ("-next_feat " +  '"' + next_feat + '"') else ""} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(num_precursors) then ("-num_precursors " +  '"' + num_precursors + '"') else ""} \
      ~{if defined(raw_data) then ("-raw_data " +  '"' + raw_data + '"') else ""} \
      ~{true="-load_preprocessing" false="" load_preprocessing} \
      ~{true="-store_preprocessing" false="" store_preprocessing} \
      ~{true="-simulation" false="" simulation} \
      ~{if defined(sim_results) then ("-sim_results " +  '"' + sim_results + '"') else ""} \
      ~{if defined(db_path) then ("-db_path " +  '"' + db_path + '"') else ""} \
      ~{if defined(rt_model) then ("-rt_model " +  '"' + rt_model + '"') else ""} \
      ~{if defined(dt_model) then ("-dt_model " +  '"' + dt_model + '"') else ""} \
      ~{if defined(fixed_modifications) then ("-fixed_modifications " +  '"' + fixed_modifications + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{true="--helphelp" false="" helphelp}
  >>>
  parameter_meta {
    in: "*            Input feature map file (featureXML) (valid formats: 'featureXML')"
    out: "Modified feature map (valid formats: 'featureXML')"
    next_feat: "Feature map (featureXML) file with the selected precursors (valid formats: 'featureXML')"
    ids: "*              File containing results of identification (valid formats: 'idXML')"
    num_precursors: "Number of precursors to be selected (default: '1')"
    raw_data: "Input profile data. (valid formats: 'mzML')"
    load_preprocessing: "The preprocessed db is loaded from file, not calculated."
    store_preprocessing: "The preprocessed db is stored."
    simulation: "Simulate the whole LC-MS/MS run."
    sim_results: "File containing the results of the simulation run (valid formats: 'txt')"
    db_path: "Db file (valid formats: 'fasta')"
    rt_model: "SVM Model for RTPredict (valid formats: 'txt')"
    dt_model: "SVM Model for PTPredict (valid formats: 'txt')"
    fixed_modifications: "The modifications i.e. Carboxymethyl (C)"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
}