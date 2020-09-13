version 1.0

task SiriusAdapter {
  input {
    String? executable
    File? in
    File? in_feature_info
    File? out_sirius
    File? out_finger_id
    Int? filter_by_num_mass_traces
    Boolean? feature_only
    Int? precursor_mz_tolerance
    String? precursor_mz_tolerance_unit
    Int? precursor_rt_tolerance
    String? profile
    Int? candidates
    String? database
    Int? noise
    Int? ppm_max
    String? isotope
    Int? elements
    Int? compound_timeout
    Int? tree_timeout
    Int? top_n_hits
    Boolean? auto_charge
    Boolean? ion_tree
    Boolean? no_recalibration
    Boolean? most_intense_ms_two
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
      ~{if defined(filter_by_num_mass_traces) then ("-filter_by_num_masstraces " +  '"' + filter_by_num_mass_traces + '"') else ""} \
      ~{if (feature_only) then "-feature_only" else ""} \
      ~{if defined(precursor_mz_tolerance) then ("-precursor_mz_tolerance " +  '"' + precursor_mz_tolerance + '"') else ""} \
      ~{if defined(precursor_mz_tolerance_unit) then ("-precursor_mz_tolerance_unit " +  '"' + precursor_mz_tolerance_unit + '"') else ""} \
      ~{if defined(precursor_rt_tolerance) then ("-precursor_rt_tolerance " +  '"' + precursor_rt_tolerance + '"') else ""} \
      ~{if defined(profile) then ("-profile " +  '"' + profile + '"') else ""} \
      ~{if defined(candidates) then ("-candidates " +  '"' + candidates + '"') else ""} \
      ~{if defined(database) then ("-database " +  '"' + database + '"') else ""} \
      ~{if defined(noise) then ("-noise " +  '"' + noise + '"') else ""} \
      ~{if defined(ppm_max) then ("-ppm_max " +  '"' + ppm_max + '"') else ""} \
      ~{if defined(isotope) then ("-isotope " +  '"' + isotope + '"') else ""} \
      ~{if defined(elements) then ("-elements " +  '"' + elements + '"') else ""} \
      ~{if defined(compound_timeout) then ("-compound_timeout " +  '"' + compound_timeout + '"') else ""} \
      ~{if defined(tree_timeout) then ("-tree_timeout " +  '"' + tree_timeout + '"') else ""} \
      ~{if defined(top_n_hits) then ("-top_n_hits " +  '"' + top_n_hits + '"') else ""} \
      ~{if (auto_charge) then "-auto_charge" else ""} \
      ~{if (ion_tree) then "-ion_tree" else ""} \
      ~{if (no_recalibration) then "-no_recalibration" else ""} \
      ~{if (most_intense_ms_two) then "-most_intense_ms2" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    executable: "Sirius executable e.g. sirius"
    in: "*                            MzML Input file (valid formats: 'mzml')"
    in_feature_info: "FeatureXML input with feature and adduct information (valid formats: 'featurexml')"
    out_sirius: "*                    MzTab Output file for SiriusAdapter results (valid formats: 'mzTab')"
    out_finger_id: "MzTab output file for CSI:FingerID, if this parameter is given, SIRIUS will search for a molecular structure using CSI:FingerID after determining the sum formula (valid formats: 'mzTab')"
    filter_by_num_mass_traces: "Features have to have at least x MassTraces. To use this parameter feature_only is neccessary (default: '1' min: '1')"
    feature_only: "Uses the feature information from in_featureinfo to reduce the search space to only MS2 associated with a feature"
    precursor_mz_tolerance: "Tolerance window for precursor selection (Feature selection in regard to the precursor) (default: '0.005')"
    precursor_mz_tolerance_unit: "Unit of the precursor_mz_tolerance (default: 'Da' valid: 'Da', 'ppm')"
    precursor_rt_tolerance: "Tolerance window (left and right) for precursor selection [seconds] (default: '5')"
    profile: "Specify the used analysis profile (default: 'qtof' valid: 'qtof', 'orbitrap', 'fticr')"
    candidates: "The number of candidates in the SIRIUS output. (default: '5')"
    database: "Search formulas in given database (default: 'all' valid: 'all', 'chebi', 'custom', 'kegg', 'bio', 'natural products', 'pubmed', 'hmdb', 'biocyc', 'hsdb', 'knapsack', 'biological', 'zinc bio', 'gnps', 'pubchem', 'mesh', 'maconda')"
    noise: "Median intensity of noise peaks (default: '0')"
    ppm_max: "Allowed ppm for decomposing masses (default: '10')"
    isotope: "How to handle isotope pattern data. Use 'score' to use them for ranking or 'filter' if you just want to remove candidates with bad isotope pattern. With 'both' you can use isotopes for filtering and scoring. Use 'omit' to ignore isotope pattern. (default: 'both' valid: 'score', 'filter', 'both', 'omit')"
    elements: "The allowed elements. Write CHNOPSCl to allow the elements C, H, N, O, P, S and Cl. Add numbers in brackets to restrict the maximal allowed occurrence of these elements: CHNOP[5]S[8]Cl[1]. (default: 'CHNOP[5]S[8]Cl[1]')"
    compound_timeout: "Time out in seconds per compound. To disable the timeout set the value to 0 (default: '10')"
    tree_timeout: "Time out in seconds per fragmentation tree computation. (default: '0')"
    top_n_hits: "The number of top hits for each compound written to the CSI:FingerID output (default: '10')"
    auto_charge: "Use this option if the charge of your compounds is unknown and you do not want to assume [M+H]+ as default. With the auto charge option SIRIUS will not care about charges and allow arbitrary adducts for the precursor peak."
    ion_tree: "Print molecular formulas and node labels with the ion formula instead of the neutral formula"
    no_recalibration: "If this option is set, SIRIUS will not recalibrate the spectrum during the analysis."
    most_intense_ms_two: "SIRIUS uses the fragmentation spectrum with the most intense precursor peak (for each spectrum)"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out_sirius = "${in_out_sirius}"
    File out_out_finger_id = "${in_out_finger_id}"
  }
}