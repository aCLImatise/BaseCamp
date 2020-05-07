class: CommandLineTool
id: CometAdapter.cwl
inputs:
- id: in
  doc: "*                            Input file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                           Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: database
  doc: "*                      FASTA file (valid formats: 'FASTA')"
  type: File
  inputBinding:
    prefix: -database
- id: comet_executable
  doc: '*        The Comet executable. Provide a full or relative path, or make sure
    it can be found in your PATH environment.'
  type: string
  inputBinding:
    prefix: -comet_executable
- id: comet_version
  doc: "Comet version: (year,version,revision) (default: '2016.01 rev. 2')"
  type: string
  inputBinding:
    prefix: -comet_version
- id: pin_out
  doc: "Output file - for Percolator input (valid formats: 'tsv')"
  type: File
  inputBinding:
    prefix: -pin_out
- id: default_params_file
  doc: "Default Comet params file. All parameters of this take precedence. A template\
    \ file can be generated using comet.exe -p (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -default_params_file
- id: precursor_mass_tolerance
  doc: "Precursor monoisotopic mass tolerance (Comet parameter: peptide_mass_tolerance).\
    \  See also precursor_error_units to set the unit. (default: '10.0')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: precursor_error_units
  doc: "Unit of precursor monoisotopic mass tolerance for parameter precursor_mass_tolerance\
    \ (Comet parameter: peptide_mass_units) (default: 'ppm' valid: 'amu', 'ppm', 'Da')"
  type: string
  inputBinding:
    prefix: -precursor_error_units
- id: isotope_error
  doc: "This parameter controls whether the peptide_mass_tolerance takes into account\
    \ possible isotope errors in the precursor mass measurement. Use -8/-4/0/4/8 only\
    \ for SILAC.  (default: 'off' valid: 'off', '0/1', '0/1/2', '-1/0/1/2/3', '-8/-4/0/4/8')"
  type: string
  inputBinding:
    prefix: -isotope_error
- id: enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Asp-N',\
    \ 'glutamyl endopeptidase', 'Arg-C', 'unspecific cleavage', 'Chymotrypsin', 'CNBr',\
    \ 'Lys-C',  'Lys-N', 'PepsinA', 'Trypsin/P', 'Trypsin')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: num_enzyme_termini
  doc: "Specify the termini where the cleavage rule has to match (default: 'fully'\
    \ valid: 'semi', 'fully', 'C-term unspecific', 'N-term unspecific')"
  type: string
  inputBinding:
    prefix: -num_enzyme_termini
- id: allowed_missed_cleavages
  doc: "Number of possible cleavage sites missed by the enzyme. It has no effect if\
    \ enzyme is unspecific cleavage. (default: '0' min: '0' max: '5')"
  type: string
  inputBinding:
    prefix: -allowed_missed_cleavages
- id: num_hits
  doc: "Number of peptide hits in output file (default: '5')"
  type: string
  inputBinding:
    prefix: -num_hits
- id: precursor_charge
  doc: "[min]:[max]          Precursor charge range to search (if spectrum is not\
    \ annotated with a charge or if override_charge!=keep any known): 0:[num] == search\
    \ all charges, 2:6 == from +2 to  +6, 3:3 == +3 (default: '0:0')"
  type: boolean
  inputBinding:
    prefix: -precursor_charge
- id: override_charge
  doc: "_keep any known_: keep any precursor charge state (from input), _ignore known_:\
    \ ignore known precursor charge state and use precursor_charge parameter, _ignore\
    \ outside  range_: ignore precursor charges outside precursor_charge range, _keep\
    \ known search unknown_: keep any known precursor charge state. For unknown charge\
    \ states, search as singly charged if there is no signal above the precursor m/z\
    \ or use the precursor_charge range (default: 'keep known search unknown' valid:\
    \ 'keep any known', 'ignore known', 'ignore outside range', 'keep known search\
    \ unknown')"
  type: string
  inputBinding:
    prefix: -override_charge
- id: ms_level
  doc: "MS level to analyze, valid are levels 2 (default) or 3 (default: '2' min:\
    \ '2' max: '3')"
  type: string
  inputBinding:
    prefix: -ms_level
- id: activation_method
  doc: "If not ALL, only searches spectra of the given method (default: 'ALL' valid:\
    \ 'ALL', 'CID', 'ECD', 'ETD', 'PQD', 'HCD', 'IRMPD')"
  type: string
  inputBinding:
    prefix: -activation_method
- id: max_fragment_charge
  doc: "Set maximum fragment charge state to analyze as long as still lower than precursor\
    \ charge - 1. (Allowed max 5) (default: '3' min: '1' max: '5')"
  type: string
  inputBinding:
    prefix: -max_fragment_charge
- id: clip_n_term_methionine
  doc: "If set to true, also considers the peptide sequence w/o N-term methionine\
    \ separately and applies appropriate N-term mods to it (default: 'false' valid:\
    \ 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -clip_nterm_methionine
- id: fixed_modifications
  doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
    \ (C)' or 'Oxidation (M)' (default: '[Carbamidomethyl (C)]' valid: '15N-oxobutano\
    \ ic (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Ace tyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhypusine (K)' , 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne ... k:SMCC (C)', 'Xlink:SSD (K)', 'ZGB\
    \ (K)', 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -fixed_modifications
- id: variable_modifications
  doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
    \ 'Carbamidomethyl (C)' or 'Oxidation (M)' (default: '[Oxidation (M)]' valid:\
    \ '15N-oxobutanoic  (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic\
    \ (Protein N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-su ccinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+ Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhypusine (K)', 'Ace tylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne (M)', ... k:SMCC (C)', 'Xlink:SSD (K)',\
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
- CometAdapter
