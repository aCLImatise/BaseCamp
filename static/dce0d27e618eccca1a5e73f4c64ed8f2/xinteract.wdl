version 1.0

task Xinteract {
  input {
    Boolean? n_my_file_dot_pep_dot_xml
    String? protein_names_omssa
    String? collision_energy_pepxml
    String? compensation_voltage_faims
    String? prec
    Boolean? ni
    Boolean? np
    Boolean? nr
    Boolean? pzero
    Boolean? x
    Boolean? var_10
    Boolean? tag
    Boolean? databasepath
    Boolean? conservativelevel
    Boolean? ppm
    Boolean? experimentlabel
    Boolean? var_16
    Boolean? database_type
    Boolean? datapath
    Boolean? var_19
    Boolean? mw
    Boolean? mono
    Boolean? ave
    String? threads
    Boolean? ex
    String? mz_to_l
    Boolean? no_update
    Boolean? num_change_default
    Boolean? strnum_change_xpress
    Boolean? heavy_labeled_peptide
    Boolean? num_fix_elution
    Boolean? ratio_setfix_light
    Boolean? ratio_setfix_heavy
    Boolean? n_metabolic_normal
    Boolean? n_metabolic_n
    Boolean? c_metabolic_normal
    Boolean? c_metabolic_c
    Boolean? also_export_intensities
    Boolean? num_range_mz
    Boolean? num_areaflag_set
    Boolean? static_modification_quantification
    Boolean? quantitate_only_state
    Boolean? return_ratio_even
    Boolean? set_background_zero
    Int? prev_aa_len
    Int? next_aa_len
    String? restore_nonexistent_if_prefix
  }
  command <<<
    xinteract \
      ~{true="-Nmyfile.pep.xml" false="" n_my_file_dot_pep_dot_xml} \
      ~{if defined(protein_names_omssa) then ("-R " +  '"' + protein_names_omssa + '"') else ""} \
      ~{if defined(collision_energy_pepxml) then ("-G " +  '"' + collision_energy_pepxml + '"') else ""} \
      ~{if defined(compensation_voltage_faims) then ("-V " +  '"' + compensation_voltage_faims + '"') else ""} \
      ~{if defined(prec) then ("-PREC " +  '"' + prec + '"') else ""} \
      ~{true="-nI" false="" ni} \
      ~{true="-nP" false="" np} \
      ~{true="-nR" false="" nr} \
      ~{true="-p0" false="" pzero} \
      ~{true="-x" false="" x} \
      ~{true="-I" false="" var_10} \
      ~{true="-d" false="" tag} \
      ~{true="-D" false="" databasepath} \
      ~{true="-c" false="" conservativelevel} \
      ~{true="-PPM" false="" ppm} \
      ~{true="-E" false="" experimentlabel} \
      ~{true="-l" false="" var_16} \
      ~{true="-T" false="" database_type} \
      ~{true="-a" false="" datapath} \
      ~{true="-p" false="" var_19} \
      ~{true="-mw" false="" mw} \
      ~{true="-MONO" false="" mono} \
      ~{true="-AVE" false="" ave} \
      ~{if defined(threads) then ("-THREADS " +  '"' + threads + '"') else ""} \
      ~{true="-eX" false="" ex} \
      ~{if defined(mz_to_l) then ("-MZTOL " +  '"' + mz_to_l + '"') else ""} \
      ~{true="-NOUPDATE" false="" no_update} \
      ~{true="-m" false="" num_change_default} \
      ~{true="-n" false="" strnum_change_xpress} \
      ~{true="-b" false="" heavy_labeled_peptide} \
      ~{true="-F" false="" num_fix_elution} \
      ~{true="-L" false="" ratio_setfix_light} \
      ~{true="-H" false="" ratio_setfix_heavy} \
      ~{true="-M" false="" n_metabolic_normal} \
      ~{true="-N" false="" n_metabolic_n} \
      ~{true="-O" false="" c_metabolic_normal} \
      ~{true="-P" false="" c_metabolic_c} \
      ~{true="-i" false="" also_export_intensities} \
      ~{true="-r" false="" num_range_mz} \
      ~{true="-f" false="" num_areaflag_set} \
      ~{true="-S" false="" static_modification_quantification} \
      ~{true="-C" false="" quantitate_only_state} \
      ~{true="-B" false="" return_ratio_even} \
      ~{true="-Z" false="" set_background_zero} \
      ~{if defined(prev_aa_len) then ("-PREV_AA_LEN " +  '"' + prev_aa_len + '"') else ""} \
      ~{if defined(next_aa_len) then ("-NEXT_AA_LEN " +  '"' + next_aa_len + '"') else ""} \
      ~{if defined(restore_nonexistent_if_prefix) then ("-RESTORE_NONEXISTENT_IF_PREFIX " +  '"' + restore_nonexistent_if_prefix + '"') else ""}
  >>>
  parameter_meta {
    n_my_file_dot_pep_dot_xml: "[write output to file 'myfile.pep.xml']"
    protein_names_omssa: "protein names in OMSSA data"
    collision_energy_pepxml: "collision energy in pepXML"
    compensation_voltage_faims: "compensation voltage (FAIMS) in pepXML"
    prec: "precursor intensity in pepXML"
    ni: "[do not run Interact (convert to pepXML only)]"
    np: "[do not run PeptideProphet]"
    nr: "[do not run get all proteins corresponding to degenerate peptides from database]"
    pzero: "[do not discard search results with PeptideProphet probabilities below 0.05]"
    x: "<num> [number of extra PeptideProphet interations; default <num>=20]"
    var_10: "<num> [ignore charge <num>+]"
    tag: "<tag> [use decoy hits to pin down the negative distribution. the decoy protein names must begin with <tag> (whitespace is not allowed)]"
    databasepath: "<database_path> [specify path to database]"
    conservativelevel: "<conservative_level> [specify how conservative the model is to be in number of standard deviations from negative mean  to allow positive model to cover (default 0, higher is more conservative)]"
    ppm: "[use PPM instead of daltons in Accurate Mass Model]"
    experimentlabel: "<experiment_label> [used to commonly label all spectra belonging to one experiment (required by iProphet)]"
    var_16: "<num> [minimum peptide length considered in the analysis (default 7)]"
    database_type: "<database type> [specify 'AA' for amino acid, 'NA' for nucleic acid (default 'AA')]"
    datapath: "<data_path> [specify absolute path to data directory]"
    var_19: "<num> [filter results below PeptideProphet probability <num>; default <num>=0.05]"
    mw: "[calculate protein molecular weights]"
    mono: "[calculate monoisotopic peptide masses during conversion to pepXML]"
    ave: "[calculate average peptide masses during conversion to pepXML]"
    threads: "[specify maximum number of threads to use]"
    ex: "[specify sample enzyme] -eT [specify sample enzyme = Trypsin] -eS [specify sample enzyme = StrictTrypsin] -eC [specify sample enzyme = Chymotrypsin] -eR [specify sample enzyme = RalphTrypsin] -eA [specify sample enzyme = AspN] -eG [specify sample enzyme = GluC] -eB [specify sample enzyme = GluC Bicarb] -eM [specify sample enzyme = CNBr] -eD [specify sample enzyme = Trypsin/CNBr] -e3 [specify sample enzyme = Chymotrypsin/AspN/Trypsin] -eE [specify sample enzyme = Elastase] -eK [specify sample enzyme = LysC / Trypsin_K (cuts after K not before P)] -eL [specify sample enzyme = LysN (cuts before K)] -eP [specify sample enzyme = LysN Promisc (cuts before KR)] -eN [specify sample enzyme = Nonspecific or None]"
    mz_to_l: "[Use specified +/- mz tolerance on site specific ions (default=0.1 dalton)] "
    no_update: "[Don't update modification_info tags in pepXML] "
    num_change_default: "<num>        change XPRESS mass tolerance (default=1.0)"
    strnum_change_xpress: "<str>,<num>  change XPRESS residue mass difference for <str> to <num> (default=9.0)"
    heavy_labeled_peptide: "heavy labeled peptide elutes before light labeled partner"
    num_fix_elution: "<num>        fix elution peak area as +-<num> scans (<num> optional, default=5) from peak apex"
    ratio_setfix_light: "for ratio, set/fix light to 1, vary heavy"
    ratio_setfix_heavy: "for ratio, set/fix heavy to 1, vary light"
    n_metabolic_normal: "for 15N metabolic labeling; ignore all other parameters, assume IDs are normal and quantify w/corresponding 15N heavy pair"
    n_metabolic_n: "for 15N metabolic labeling; ignore all other parameters, assume IDs are 15N heavy and quantify w/corresponding 14N light pair"
    c_metabolic_normal: "for 13C metabolic labeling; ignore all other parameters, assume IDs are normal and quantify w/corresponding 13C heavy pair"
    c_metabolic_c: "for 13C metabolic labeling; ignore all other parameters, assume IDs are 13C heavy and quantify w/corresponding 12C light pair"
    also_export_intensities: "also export intensities and intensity based ratio"
    num_range_mz: "<num>    range around precusor m/z to search for peak (default 0.5)"
    num_areaflag_set: "<num>    areaFlag set to num (ratio display option)"
    static_modification_quantification: "static modification quantification (i.e. each run is either all light or all heavy)"
    quantitate_only_state: "quantitate only the charge state where the CID was made"
    return_ratio_even: "return a ratio even if the background is high"
    set_background_zero: "set all background to zero"
    prev_aa_len: "set the number of previous AAs recorded for a peptide hit (default 1)"
    next_aa_len: "set the number of following AAs recorded for a peptide hit (default 1)"
    restore_nonexistent_if_prefix: "for proteins which starts with <str> and not found in refresh database, keep original protein names instead of NON_EXISTENT"
  }
}