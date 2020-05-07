class: CommandLineTool
id: PepNovoAdapter.cwl
inputs:
- id: in
  doc: "*                     Input file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                    Output file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: pep_novo_executable
  doc: '*     The PepNovo executable. Provide a full or relative path, or make sure
    it can be found in your PATH environment.'
  type: File
  inputBinding:
    prefix: -pepnovo_executable
- id: model_directory
  doc: '*        Name of the directory where the model files are kept.'
  type: File
  inputBinding:
    prefix: -model_directory
- id: correct_pm
  doc: Find optimal precursor mass and charge values.
  type: boolean
  inputBinding:
    prefix: -correct_pm
- id: use_spectrum_charge
  doc: Do not correct charge
  type: boolean
  inputBinding:
    prefix: -use_spectrum_charge
- id: use_spectrum_mz
  doc: Do not correct the precursor m/z value that appears in the file.
  type: boolean
  inputBinding:
    prefix: -use_spectrum_mz
- id: no_quality_filter
  doc: Do not remove low quality spectra.
  type: boolean
  inputBinding:
    prefix: -no_quality_filter
- id: fragment_tolerance
  doc: "The fragment tolerance (between 0 and 0.75 Da. Set to -1.0 to use model's\
    \ default setting) (default: '-1.0')"
  type: double
  inputBinding:
    prefix: -fragment_tolerance
- id: pm_tolerance
  doc: "The precursor mass tolerance (between 0 and 5.0 Da. Set to -1.0 to use model's\
    \ default setting) (default: '-1.0')"
  type: double
  inputBinding:
    prefix: -pm_tolerance
- id: model
  doc: "Name of the model that should be used (default: 'CID_IT_TRYP')"
  type: File
  inputBinding:
    prefix: -model
- id: digest
  doc: "Enzyme used for digestion (default TRYPSIN) (default: 'TRYPSIN' valid: 'TRYPSIN',\
    \ 'NON_SPECIFIC')"
  type: boolean
  inputBinding:
    prefix: -digest
- id: tag_length
  doc: "Returns peptide sequence of the specified length (only lengths 3-6 are allowed)\
    \ (default: '-1')"
  type: string
  inputBinding:
    prefix: -tag_length
- id: num_solutions
  doc: "Number of solutions to be computed (default: '20' min: '1' max: '2000')"
  type: string
  inputBinding:
    prefix: -num_solutions
- id: fixed_modifications
  doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
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
  type: string
  inputBinding:
    prefix: -fixed_modifications
- id: variable_modifications
  doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
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
  type: string
  inputBinding:
    prefix: -variable_modifications
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- PepNovoAdapter
