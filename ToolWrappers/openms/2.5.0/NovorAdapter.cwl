class: CommandLineTool
id: NovorAdapter.cwl
inputs:
- id: in_executable
  doc: Novor.jar
  type: string?
  inputBinding:
    prefix: -executable
- id: in_in
  doc: "*                         MzML Input file (valid formats: 'mzml')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                        Novor idXML output (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_enzyme
  doc: "Digestion enzyme - currently only Trypsin is supported  (default: 'Trypsin'\
    \ valid: 'Trypsin')"
  type: string?
  inputBinding:
    prefix: -enzyme
- id: in_fragmentation
  doc: "Fragmentation method (default: 'CID' valid: 'CID', 'HCD')"
  type: string?
  inputBinding:
    prefix: -fragmentation
- id: in_mass_analyzer
  doc: "MassAnalyzer e.g. (Oritrap CID-Trap, CID-FT, HCD-FT; QTof CID-TOF) (default:\
    \ 'Trap' valid: 'Trap', 'TOF', 'FT')"
  type: string?
  inputBinding:
    prefix: -massAnalyzer
- id: in_fragment_mass_tolerance
  doc: "Fragmentation error tolerance  (Da) (default: '0.5')"
  type: double?
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: in_precursor_mass_tolerance
  doc: "Precursor error tolerance  (ppm or Da) (default: '15.0')"
  type: double?
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: in_precursor_error_units
  doc: "Unit of precursor mass tolerance (default: 'ppm' valid: 'ppm', 'Da')"
  type: string?
  inputBinding:
    prefix: -precursor_error_units
- id: in_variable_modifications
  doc: "Variable modifications (valid: 'Acetyl (K)', 'Acetyl (N-term)', 'Amidated\
    \ (C-term)', 'Ammonia-loss (N-term C)', 'Biotin (K)', 'Biotin (N-term)', 'Carbamidomethyl\
    \ (C)', 'Carbamyl (K)', 'Carbamyl (N-term)', 'Carboxymethyl (C)', 'Deamidated\
    \ (NQ)', 'Dehydrated (N-term C)', 'Dioxidation (M)', 'Methyl (C-term)', 'Methyl\
    \ (DE)', 'Oxidation (M)', 'Oxidation (HW)', 'Phospho (ST)', 'Phospho (Y)', 'Pyro-carbamidomethyl\
    \ (N-term C)', 'Pyro-Glu (E)', 'Pyro-Glu (Q)', 'Sodium (C-term)', 'Sodium (DE)',\
    \ 'Sulfo (STY)', 'Trimethyl (RK)')"
  type: string?
  inputBinding:
    prefix: -variable_modifications
- id: in_fixed_modifications
  doc: "Fixed modifications (valid: 'Acetyl (K)', 'Acetyl (N-term)', 'Amidated (C-term)',\
    \ 'Ammonia-loss (N-term C)', 'Biotin (K)', 'Biotin (N-term)', 'Carbamidomethyl\
    \ (C)', 'Carbamyl (K)', 'Carbamyl (N-term)', 'Carboxymethyl (C)', 'Deamidated\
    \ (NQ)', 'Dehydrated (N-term C)', 'Dioxidation (M)', 'Methyl (C-term)', 'Methyl\
    \ (DE)', 'Oxidation (M)', 'Oxidation (HW)', 'Phospho (ST)', 'Phospho (Y)', 'Pyro-carbamidomethyl\
    \ (N-term C)', 'Pyro-Glu (E)', 'Pyro-Glu (Q)', 'Sodium (C-term)', 'Sodium (DE)',\
    \ 'Sulfo (STY)', 'Trimethyl (RK)')"
  type: string?
  inputBinding:
    prefix: -fixed_modifications
- id: in_forbidden_residues
  doc: "Forbidden Resiudes (valid: 'I', 'U')"
  type: string?
  inputBinding:
    prefix: -forbiddenResidues
- id: in_nov_or_file
  doc: "File to introduce customized algorithm parameters for advanced users (otional\
    \ .novor file) (valid formats: 'novor')"
  type: File?
  inputBinding:
    prefix: -novorFile
- id: in_java_executable
  doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  type: File?
  inputBinding:
    prefix: -java_executable
- id: in_java_memory
  doc: "Maximum Java heap size (in MB) (default: '3500')"
  type: long?
  inputBinding:
    prefix: -java_memory
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- NovorAdapter
