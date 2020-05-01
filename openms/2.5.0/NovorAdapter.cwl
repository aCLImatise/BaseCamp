#!/usr/bin/env cwl-runner

baseCommand:
- NovorAdapter
class: CommandLineTool
cwlVersion: v1.0
id: novoradapter
inputs:
- doc: Novor.jar
  id: executable
  inputBinding:
    prefix: -executable
  type: string
- doc: "*                         MzML Input file (valid formats: 'mzml')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                        Novor idXML output (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Digestion enzyme - currently only Trypsin is supported  (default: 'Trypsin'\
    \ valid: 'Trypsin')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: "Fragmentation method (default: 'CID' valid: 'CID', 'HCD')"
  id: fragmentation
  inputBinding:
    prefix: -fragmentation
  type: string
- doc: "MassAnalyzer e.g. (Oritrap CID-Trap, CID-FT, HCD-FT; QTof CID-TOF) (default:\
    \ 'Trap' valid: 'Trap', 'TOF', 'FT')"
  id: mass_analyzer
  inputBinding:
    prefix: -massAnalyzer
  type: string
- doc: "Fragmentation error tolerance  (Da) (default: '0.5')"
  id: fragment_mass_tolerance
  inputBinding:
    prefix: -fragment_mass_tolerance
  type: string
- doc: "Precursor error tolerance  (ppm or Da) (default: '15.0')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
  type: string
- doc: "Unit of precursor mass tolerance (default: 'ppm' valid: 'ppm', 'Da')"
  id: precursor_error_units
  inputBinding:
    prefix: -precursor_error_units
  type: string
- doc: "Variable modifications (valid: 'Acetyl (K)', 'Acetyl (N-term)', 'Amidated\
    \ (C-term)', 'Ammonia-loss (N-term C)', 'Biotin (K)', 'Biotin (N-term)', 'Carbamidomethyl\
    \ (C)', 'Car bamyl (K)', 'Carbamyl (N-term)', 'Carboxymethyl (C)', 'Deamidated\
    \ (NQ)', 'Dehydrated (N-term C)', 'Dioxidation (M)', 'Methyl (C-term)', 'Methyl\
    \ (DE)', 'Oxidation (M)', 'Oxi dation (HW)', 'Phospho (ST)', 'Phospho (Y)', 'Pyro-carbamidomethyl\
    \ (N-term C)', 'Pyro-Glu (E)', 'Pyro-Glu (Q)', 'Sodium (C-term)', 'Sodium (DE)',\
    \ 'Sulfo (STY)', 'Trimethyl (RK)')"
  id: variable_modifications
  inputBinding:
    prefix: -variable_modifications
  type: string
- doc: "Fixed modifications (valid: 'Acetyl (K)', 'Acetyl (N-term)', 'Amidated (C-term)',\
    \ 'Ammonia-loss (N-term C)', 'Biotin (K)', 'Biotin (N-term)', 'Carbamidomethyl\
    \ (C)', 'Carbam yl (K)', 'Carbamyl (N-term)', 'Carboxymethyl (C)', 'Deamidated\
    \ (NQ)', 'Dehydrated (N-term C)', 'Dioxidation (M)', 'Methyl (C-term)', 'Methyl\
    \ (DE)', 'Oxidation (M)', 'Oxidat ion (HW)', 'Phospho (ST)', 'Phospho (Y)', 'Pyro-carbamidomethyl\
    \ (N-term C)', 'Pyro-Glu (E)', 'Pyro-Glu (Q)', 'Sodium (C-term)', 'Sodium (DE)',\
    \ 'Sulfo (STY)', 'Trimethyl (RK)')"
  id: fixed_modifications
  inputBinding:
    prefix: -fixed_modifications
  type: string
- doc: "Forbidden Resiudes (valid: 'I', 'U')"
  id: forbidden_residues
  inputBinding:
    prefix: -forbiddenResidues
  type: string
- doc: "File to introduce customized algorithm parameters for advanced users (otional\
    \ .novor file) (valid formats: 'novor')"
  id: nov_or_file
  inputBinding:
    prefix: -novorFile
  type: File
- doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  id: java_executable
  inputBinding:
    prefix: -java_executable
  type: File
- doc: "Maximum Java heap size (in MB) (default: '3500')"
  id: java_memory
  inputBinding:
    prefix: -java_memory
  type: string
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
