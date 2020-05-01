#!/usr/bin/env cwl-runner

baseCommand:
- XTandemAdapter
class: CommandLineTool
cwlVersion: v1.0
id: xtandemadapter
inputs:
- doc: "*                        Input file containing MS2 spectra (valid formats:\
    \ 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file containing search results (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Raw output file directly from X! Tandem. Either 'out' or 'xml_out' are required.\
    \ They can be used together. (valid formats: 'xml')"
  id: xml_out
  inputBinding:
    prefix: -xml_out
  type: File
- doc: "*                  FASTA file or pro file. Non-existing relative file-names\
    \ are looked up via'OpenMS.ini:id_db_dir' (valid formats: 'FASTA')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: "*  X! Tandem executable of the installation e.g. 'tandem.exe'"
  id: x_tandem_executable
  inputBinding:
    prefix: -xtandem_executable
  type: string
- doc: "Default X! Tandem configuration file. All parameters of this adapter take\
    \ precedence over the file - use it for parameters not available here. A template\
    \ file can be found  at 'OpenMS/share/CHEMISTRY/XTandem_default_input.xml'. (valid\
    \ formats: 'xml')"
  id: default_config_file
  inputBinding:
    prefix: -default_config_file
  type: File
- doc: Set this to use the configuration given in 'default_config_file' exclusively,
    ignoring other parameters (apart from 'in', 'out', 'database', 'xtandem_executable')
    set via  this adapter.
  id: ignore_adapter_param
  inputBinding:
    prefix: -ignore_adapter_param
  type: boolean
- doc: "Precursor mass tolerance (default: '10')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
  type: string
- doc: "Fragment mass error (default: '0.3')"
  id: fragment_mass_tolerance
  inputBinding:
    prefix: -fragment_mass_tolerance
  type: string
- doc: "Parent monoisotopic mass error units (default: 'ppm' valid: 'ppm', 'Da')"
  id: precursor_error_units
  inputBinding:
    prefix: -precursor_error_units
  type: string
- doc: "Fragment monoisotopic mass error units (default: 'Da' valid: 'ppm', 'Da')"
  id: fragment_error_units
  inputBinding:
    prefix: -fragment_error_units
  type: string
- doc: "Maximum precursor charge ('0' to use X! Tandem default) (default: '4' min:\
    \ '0')"
  id: max_precursor_charge
  inputBinding:
    prefix: -max_precursor_charge
  type: string
- doc: By default, misassignment to the first and second isotopic 13C peak are also
    considered. Set this flag to disable.
  id: no_isotope_error
  inputBinding:
    prefix: -no_isotope_error
  type: boolean
- doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
    \ (C)' or 'Oxidation (M)' (default: '[Carbamidomethyl (C)]' valid: '15N-oxobutanoic\
    \  (N-term C)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulf o (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)',\
    \ 'Ala->Glu (A)', 'Ala->Gly (A)', 'Ala->His (A)', 'Ala->Lys (A)', ... , 'Xlink:DTSSP\
    \ (K)', 'Xlink:EGS (K)', 'Xlink:EGScleaved (K)', 'Xlink:SMCC (C)', 'Xlink:SSD\
    \ (K)', 'ZGB (K)', 'ZGB (N-term)')"
  id: fixed_modifications
  inputBinding:
    prefix: -fixed_modifications
  type: string
- doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
    \ 'Carbamidomethyl (C)' or 'Oxidation (M)' (default: '[Oxidation (M)]' valid:\
    \ '15N-oxobutanoic (N-t erm C)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl\
    \ (C)', '2-nitrobenzyl (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)',\
    \ '3-phosphoglyceryl (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE\
    \ (K)', '4-ONE+Delta:H(-2)O(-1) (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1)\
    \ (K)', '4AcAllylGal (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)',\
    \ 'Acetyl (C)', 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl\
    \ (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)',\
    \ 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)',\
    \ 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4)\
    \ (T)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)',\
    \ 'Ahx2+Hsl (C-term)', 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys\
    \ (A)', 'Ala->Gln (A)', 'Ala->Glu (A)', 'Ala->Gly (A)', 'Ala->His (A)', 'Ala->Lys\
    \ (A)', ... , 'Xlink:DTSSP (K)', 'Xlink:EGS (K)', 'Xlink:EGScleaved (K)', 'Xlink:SMCC\
    \ (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  id: variable_modifications
  inputBinding:
    prefix: -variable_modifications
  type: string
- doc: "Minimum fragment m/z (default: '150')"
  id: minimum_fragment_mz
  inputBinding:
    prefix: -minimum_fragment_mz
  type: string
- doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Trypsin/P',\
    \ 'PepsinA', 'TrypChymo', 'Lys-C/P', 'Lys-N', 'Formic_acid', 'Lys-C', 'Trypsin',\
    \ 'unspecific  cleavage', 'CNBr', 'glutamyl endopeptidase', 'Asp-N/B', 'Chymotrypsin/P',\
    \ 'Alpha-lytic protease', '2-iodobenzoate', 'Arg-C/P', 'Asp-N', 'Arg-C', 'Asp-N_ambic',\
    \ 'V8-DE', 'V8- E', 'leukocyte elastase', 'Chymotrypsin')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: "Number of possible cleavage sites missed by the enzyme (default: '1')"
  id: missed_cleavages
  inputBinding:
    prefix: -missed_cleavages
  type: string
- doc: Require only peptide end to have a valid cleavage site, not both.
  id: semi_cleavage
  inputBinding:
    prefix: -semi_cleavage
  type: boolean
- doc: "Which hits should be reported. All, valid ones (passing the E-Value threshold),\
    \ or stochastic (failing the threshold) (default: 'all' valid: 'all', 'valid',\
    \ 'stochastic')"
  id: output_results
  inputBinding:
    prefix: -output_results
  type: string
- doc: "Maximal E-Value of a hit to be reported (only evaluated if 'output_result'\
    \ is 'valid' or 'stochastic') (default: '0.1')"
  id: max_valid_expect
  inputBinding:
    prefix: -max_valid_expect
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
