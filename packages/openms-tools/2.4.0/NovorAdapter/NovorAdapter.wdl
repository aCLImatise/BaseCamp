version 1.0

task NovorAdapter {
  input {
    String? executable
    File? in
    File? out
    String? enzyme
    String? fragmentation
    String? mass_analyzer
    Float? fragment_mass_tolerance
    Int? precursor_mass_tolerance
    String? precursor_error_units
    String? variable_modifications
    String? fixed_modifications
    String? forbidden_residues
    File? nov_or_file
    File? java_executable
    Int? java_memory
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    NovorAdapter \
      ~{if defined(executable) then ("-executable " +  '"' + executable + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(enzyme) then ("-enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(fragmentation) then ("-fragmentation " +  '"' + fragmentation + '"') else ""} \
      ~{if defined(mass_analyzer) then ("-massAnalyzer " +  '"' + mass_analyzer + '"') else ""} \
      ~{if defined(fragment_mass_tolerance) then ("-fragment_mass_tolerance " +  '"' + fragment_mass_tolerance + '"') else ""} \
      ~{if defined(precursor_mass_tolerance) then ("-precursor_mass_tolerance " +  '"' + precursor_mass_tolerance + '"') else ""} \
      ~{if defined(precursor_error_units) then ("-precursor_error_units " +  '"' + precursor_error_units + '"') else ""} \
      ~{if defined(variable_modifications) then ("-variable_modifications " +  '"' + variable_modifications + '"') else ""} \
      ~{if defined(fixed_modifications) then ("-fixed_modifications " +  '"' + fixed_modifications + '"') else ""} \
      ~{if defined(forbidden_residues) then ("-forbiddenResidues " +  '"' + forbidden_residues + '"') else ""} \
      ~{if defined(nov_or_file) then ("-novorFile " +  '"' + nov_or_file + '"') else ""} \
      ~{if defined(java_executable) then ("-java_executable " +  '"' + java_executable + '"') else ""} \
      ~{if defined(java_memory) then ("-java_memory " +  '"' + java_memory + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    executable: "Novor.jar"
    in: "*                         MzML Input file (valid formats: 'mzml')"
    out: "*                        Novor idXML output (valid formats: 'idXML')"
    enzyme: "Digestion enzyme - currently only Trypsin is supported  (default: 'Trypsin' valid: 'Trypsin')"
    fragmentation: "Fragmentation method (default: 'CID' valid: 'CID', 'HCD')"
    mass_analyzer: "MassAnalyzer e.g. (Oritrap CID-Trap, CID-FT, HCD-FT; QTof CID-TOF) (default: 'Trap' valid: 'Trap', 'TOF', 'FT')"
    fragment_mass_tolerance: "Fragmentation error tolerance  (Da) (default: '0.5')"
    precursor_mass_tolerance: "Precursor error tolerance  (ppm or Da) (default: '15')"
    precursor_error_units: "Unit of precursor mass tolerance (default: 'ppm' valid: 'ppm', 'Da')"
    variable_modifications: "Variable modifications (valid: 'Acetyl (K)', 'Acetyl (N-term)', 'Amidated (C-term)', 'Ammonia-loss (N-term C)', 'Biotin (K)', 'Biotin (N-term)', 'Carbamidomethyl (C)', 'Carbamyl (K)', 'Carbamyl (N-term)', 'Carboxymethyl (C)', 'Deamidated (NQ)', 'Dehydrated (N-term C)', 'Dioxidation (M)', 'Methyl (C-term)', 'Methyl (DE)', 'Oxidation (M)', 'Oxidation (HW)', 'Phospho (ST)', 'Phospho (Y)', 'Pyro-carbamidomethyl (N-term C)', 'Pyro-Glu (E)', 'Pyro-Glu (Q)', 'Sodium (C-term)', 'Sodium (DE)', 'Sulfo (STY)', 'Trimethyl (RK)')"
    fixed_modifications: "Fixed modifications (valid: 'Acetyl (K)', 'Acetyl (N-term)', 'Amidated (C-term)', 'Ammonia-loss (N-term C)', 'Biotin (K)', 'Biotin (N-term)', 'Carbamidomethyl (C)', 'Carbamyl (K)', 'Carbamyl (N-term)', 'Carboxymethyl (C)', 'Deamidated (NQ)', 'Dehydrated (N-term C)', 'Dioxidation (M)', 'Methyl (C-term)', 'Methyl (DE)', 'Oxidation (M)', 'Oxidation (HW)', 'Phospho (ST)', 'Phospho (Y)', 'Pyro-carbamidomethyl (N-term C)', 'Pyro-Glu (E)', 'Pyro-Glu (Q)', 'Sodium (C-term)', 'Sodium (DE)', 'Sulfo (STY)', 'Trimethyl (RK)')"
    forbidden_residues: "Forbidden Resiudes (valid: 'I', 'U')"
    nov_or_file: "File to introduce customized algorithm parameters for advanced users (otional .novor file) (valid formats: 'novor')"
    java_executable: "The Java executable. Usually Java is on the system PATH. If Java is not found, use this parameter to specify the full path to Java"
    java_memory: "Maximum Java heap size (in MB) (default: '3500')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}