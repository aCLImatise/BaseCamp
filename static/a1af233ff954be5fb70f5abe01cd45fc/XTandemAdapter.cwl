class: CommandLineTool
id: XTandemAdapter.cwl
inputs:
- id: in
  doc: "*                        Input file containing MS2 spectra (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file containing search results (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: xml_out
  doc: "Raw output file directly from X! Tandem. Either 'out' or 'xml_out' are required.\
    \ They can be used together. (valid formats: 'xml')"
  type: File
  inputBinding:
    prefix: -xml_out
- id: database
  doc: "*                  FASTA file or pro file. Non-existing relative file-names\
    \ are looked up via'OpenMS.ini:id_db_dir' (valid formats: 'FASTA')"
  type: File
  inputBinding:
    prefix: -database
- id: x_tandem_executable
  doc: '*  X! Tandem executable. Provide a full or relative path, or make sure it
    can be found in your PATH environment.'
  type: string
  inputBinding:
    prefix: -xtandem_executable
- id: default_config_file
  doc: "Default X! Tandem configuration file. All parameters of this adapter take\
    \ precedence over the file - use it for parameters not available here. A template\
    \ file can be found  at 'OpenMS/share/CHEMISTRY/XTandem_default_input.xml'. (valid\
    \ formats: 'xml')"
  type: File
  inputBinding:
    prefix: -default_config_file
- id: ignore_adapter_param
  doc: Set this to use the configuration given in 'default_config_file' exclusively,
    ignoring other parameters (apart from 'in', 'out', 'database', 'xtandem_executable')
    set via  this adapter.
  type: boolean
  inputBinding:
    prefix: -ignore_adapter_param
- id: precursor_mass_tolerance
  doc: "Precursor mass tolerance (default: '10.0')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: fragment_mass_tolerance
  doc: "Fragment mass error (default: '0.3')"
  type: string
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: precursor_error_units
  doc: "Parent monoisotopic mass error units (default: 'ppm' valid: 'ppm', 'Da')"
  type: string
  inputBinding:
    prefix: -precursor_error_units
- id: fragment_error_units
  doc: "Fragment monoisotopic mass error units (default: 'Da' valid: 'ppm', 'Da')"
  type: string
  inputBinding:
    prefix: -fragment_error_units
- id: max_precursor_charge
  doc: "Maximum precursor charge ('0' to use X! Tandem default) (default: '4' min:\
    \ '0')"
  type: string
  inputBinding:
    prefix: -max_precursor_charge
- id: no_isotope_error
  doc: By default, misassignment to the first and second isotopic 13C peak are also
    considered. Set this flag to disable.
  type: boolean
  inputBinding:
    prefix: -no_isotope_error
- id: fixed_modifications
  doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
    \ (C)' or 'Oxidation (M)' (default: '[Carbamidomethyl (C)]' valid: '15N-oxobutanoic\
    \  (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succin yl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H( -2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)' , 'Acetyl:2H(3) (N-term)',\
    \ 'Acetyl:2H(3) (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP -Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-S\
    \ ... rm)', 'Xlink:EGScleaved (K)', 'Xlink:EGScleaved (Protein N-term)', 'Xlink:SMCC\
    \ (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -fixed_modifications
- id: variable_modifications
  doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
    \ 'Carbamidomethyl (C)' or 'Oxidation (M)' (default: '[Oxidation (M)]' valid:\
    \ '15N-oxobutanoic (N-t erm C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic\
    \ (Protein N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2) O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-t erm)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP-R ibosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-S\
    \ ... rm)', 'Xlink:EGScleaved (K)', 'Xlink:EGScleaved (Protein N-term)', 'Xlink:SMCC\
    \ (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -variable_modifications
- id: minimum_fragment_mz
  doc: "Minimum fragment m/z (default: '150.0')"
  type: string
  inputBinding:
    prefix: -minimum_fragment_mz
- id: enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Formic_acid',\
    \ 'Lys-C', 'Trypsin', '2-iodobenzoate', 'Asp-N', 'Asp-N/B', 'Chymotrypsin/P',\
    \ 'CNBr', 'Asp-N_a mbic', 'Chymotrypsin', 'unspecific cleavage', 'TrypChymo',\
    \ 'Trypsin/P', 'V8-DE', 'V8-E', 'leukocyte elastase', 'glutamyl endopeptidase',\
    \ 'Alpha-lytic protease', 'Lys-N', 'Lys-C/P', 'PepsinA', 'Arg-C', 'Arg-C/P')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: missed_cleavages
  doc: "Number of possible cleavage sites missed by the enzyme (default: '1')"
  type: string
  inputBinding:
    prefix: -missed_cleavages
- id: semi_cleavage
  doc: Require only peptide end to have a valid cleavage site, not both.
  type: boolean
  inputBinding:
    prefix: -semi_cleavage
- id: output_results
  doc: "Which hits should be reported. All, valid ones (passing the E-Value threshold),\
    \ or stochastic (failing the threshold) (default: 'all' valid: 'all', 'valid',\
    \ 'stochastic')"
  type: string
  inputBinding:
    prefix: -output_results
- id: max_valid_expect
  doc: "Maximal E-Value of a hit to be reported (only evaluated if 'output_result'\
    \ is 'valid' or 'stochastic') (default: '0.1')"
  type: string
  inputBinding:
    prefix: -max_valid_expect
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
- XTandemAdapter
