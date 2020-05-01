#!/usr/bin/env cwl-runner

baseCommand:
- PepNovoAdapter
class: CommandLineTool
cwlVersion: v1.0
id: pepnovoadapter
inputs:
- doc: "*                     Input file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                    Output file  (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: '*     The PepNovo executable. Provide a full or relative path, or make sure
    it can be found in your PATH environment.'
  id: pep_novo_executable
  inputBinding:
    prefix: -pepnovo_executable
  type: File
- doc: '*        Name of the directory where the model files are kept.'
  id: model_directory
  inputBinding:
    prefix: -model_directory
  type: File
- doc: Find optimal precursor mass and charge values.
  id: correct_pm
  inputBinding:
    prefix: -correct_pm
  type: boolean
- doc: Do not correct charge
  id: use_spectrum_charge
  inputBinding:
    prefix: -use_spectrum_charge
  type: boolean
- doc: Do not correct the precursor m/z value that appears in the file.
  id: use_spectrum_mz
  inputBinding:
    prefix: -use_spectrum_mz
  type: boolean
- doc: Do not remove low quality spectra.
  id: no_quality_filter
  inputBinding:
    prefix: -no_quality_filter
  type: boolean
- doc: "The fragment tolerance (between 0 and 0.75 Da. Set to -1.0 to use model's\
    \ default setting) (default: '-1.0')"
  id: fragment_tolerance
  inputBinding:
    prefix: -fragment_tolerance
  type: double
- doc: "The precursor mass tolerance (between 0 and 5.0 Da. Set to -1.0 to use model's\
    \ default setting) (default: '-1.0')"
  id: pm_tolerance
  inputBinding:
    prefix: -pm_tolerance
  type: double
- doc: "Name of the model that should be used (default: 'CID_IT_TRYP')"
  id: model
  inputBinding:
    prefix: -model
  type: File
- doc: "Enzyme used for digestion (default TRYPSIN) (default: 'TRYPSIN' valid: 'TRYPSIN',\
    \ 'NON_SPECIFIC')"
  id: digest
  inputBinding:
    prefix: -digest
  type: boolean
- doc: "Returns peptide sequence of the specified length (only lengths 3-6 are allowed)\
    \ (default: '-1')"
  id: tag_length
  inputBinding:
    prefix: -tag_length
  type: string
- doc: "Number of solutions to be computed (default: '20' min: '1' max: '2000')"
  id: num_solutions
  inputBinding:
    prefix: -num_solutions
  type: string
- doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
    \ (C)' or 'Oxidation (M)' (default: '[Carbamidomethyl (C)]' valid: '15N-oxobutanoic\
    \ (N-t erm C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)' , '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3 ) (N-term)',\
    \ 'Acetyl:2H(3) (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-te rm)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS\
    \ (M)', 'AHA-SS_CAM ... (Protein N-term)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)',\
    \ 'ZGB (K)', 'ZGB (N-term)')"
  id: fixed_modifications
  inputBinding:
    prefix: -fixed_modifications
  type: string
- doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
    \ 'Carbamidomethyl (C)' or 'Oxidation (M)' (default: '[Oxidation (M)]' valid:\
    \ '15N-oxobutanoic (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic\
    \ (Protein N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3 ) (N-term)',\
    \ 'Acetyl:2H(3) (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-te rm)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS\
    \ (M)', 'AHA-SS_CAM ... (Protein N-term)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)',\
    \ 'ZGB (K)', 'ZGB (N-term)')"
  id: variable_modifications
  inputBinding:
    prefix: -variable_modifications
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
