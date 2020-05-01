#!/usr/bin/env cwl-runner

baseCommand:
- MSGFPlusAdapter
class: CommandLineTool
cwlVersion: v1.0
id: msgfplusadapter
inputs:
- doc: "*                        Input file (MS-GF+ parameter '-s') (valid formats:\
    \ 'mzML', 'mzXML', 'mgf', 'ms2')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Alternative output file (MS-GF+ parameter '-o') Either 'out' or 'mzid_out'\
    \ are required. They can be used together. (valid formats: 'mzid')"
  id: mz_id_out
  inputBinding:
    prefix: -mzid_out
  type: File
- doc: "*                MS-GF+ .jar file, e.g. 'c:\\program files\\MSGFPlus.jar'"
  id: executable
  inputBinding:
    prefix: -executable
  type: File
- doc: "*                  Protein sequence database (FASTA file; MS-GF+ parameter\
    \ '-d'). Non-existing relative filenames are looked up via 'OpenMS.ini:id_db_dir'.\
    \ (valid formats: 'FASTA')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: Create decoy proteins (reversed sequences) and append them to the database
    for the search (MS-GF+ parameter '-tda'). This allows the calculation of FDRs,
    but should only be  used if the database does not already contain decoys.
  id: add_decoys
  inputBinding:
    prefix: -add_decoys
  type: boolean
- doc: "Precursor monoisotopic mass tolerance (MS-GF+ parameter '-t') (default: '10')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
  type: string
- doc: "Unit of precursor mass tolerance (MS-GF+ parameter '-t') (default: 'ppm' valid:\
    \ 'Da', 'ppm')"
  id: precursor_error_units
  inputBinding:
    prefix: -precursor_error_units
  type: string
- doc: "Range of allowed isotope peak errors (MS-GF+ parameter '-ti'). Takes into\
    \ account the error introduced by choosing a non-monoisotopic peak for fragmentation.\
    \ Combined with  'precursor_mass_tolerance'/'precursor_error_units', this determines\
    \ the actual precursor mass tolerance. E.g. for experimental mass 'exp' and calculated\
    \ mass 'calc', '-precu rsor_mass_tolerance 20 -precursor_error_units ppm -isotope_error_range\
    \ -1,2' tests '|exp - calc - n * 1.00335 Da| < 20 ppm' for n = -1, 0, 1, 2. (default:\
    \ '0,1')"
  id: isotope_error_range
  inputBinding:
    prefix: -isotope_error_range
  type: string
- doc: "Fragmentation method ('from_spectrum' relies on spectrum meta data and uses\
    \ CID as fallback option; MS-GF+ parameter '-m') (default: 'from_spectrum' valid:\
    \ 'from_spectrum',  'CID', 'ETD', 'HCD')"
  id: fragment_method
  inputBinding:
    prefix: -fragment_method
  type: string
- doc: "Instrument that generated the data ('low_res'/'high_res' refer to LCQ and\
    \ LTQ instruments; MS-GF+ parameter '-inst') (default: 'low_res' valid: 'low_res',\
    \ 'high_res', 'TOF', 'Q_Exactive')"
  id: instrument
  inputBinding:
    prefix: -instrument
  type: string
- doc: "Enzyme used for digestion, or type of cleavage. Note: MS-GF+ does not support\
    \ blocking rules. (MS-GF+ parameter '-e') (default: 'Trypsin/P' valid: 'Alpha-lytic\
    \ protease',  'Arg-C/P', 'Asp-N/B', 'Chymotrypsin/P', 'Lys-C/P', 'Lys-N', 'Trypsin/P',\
    \ 'glutamyl endopeptidase', 'no cleavage', 'unspecific cleavage')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: "Labeling or enrichment protocol used, if any (MS-GF+ parameter '-p') (default:\
    \ 'automatic' valid: 'automatic', 'phospho', 'iTRAQ', 'iTRAQ_phospho', 'TMT',\
    \ 'none')"
  id: protocol
  inputBinding:
    prefix: -protocol
  type: string
- doc: "Level of cleavage specificity required (MS-GF+ parameter '-ntt') (default:\
    \ 'fully' valid: 'non', 'semi', 'fully')"
  id: tryptic
  inputBinding:
    prefix: -tryptic
  type: string
- doc: "Minimum precursor ion charge (only used for spectra without charge information;\
    \ MS-GF+ parameter '-minCharge') (default: '2' min: '1')"
  id: min_precursor_charge
  inputBinding:
    prefix: -min_precursor_charge
  type: string
- doc: "Maximum precursor ion charge (only used for spectra without charge information;\
    \ MS-GF+ parameter '-maxCharge') (default: '3' min: '1')"
  id: max_precursor_charge
  inputBinding:
    prefix: -max_precursor_charge
  type: string
- doc: "Minimum peptide length to consider (MS-GF+ parameter '-minLength') (default:\
    \ '6' min: '1')"
  id: min_peptide_length
  inputBinding:
    prefix: -min_peptide_length
  type: string
- doc: "Maximum peptide length to consider (MS-GF+ parameter '-maxLength') (default:\
    \ '40' min: '1')"
  id: max_peptide_length
  inputBinding:
    prefix: -max_peptide_length
  type: string
- doc: "Number of matches per spectrum to be reported (MS-GF+ parameter '-n') (default:\
    \ '1' min: '1')"
  id: matches_per_spec
  inputBinding:
    prefix: -matches_per_spec
  type: string
- doc: "<true/false>         Output additional features (MS-GF+ parameter '-addFeatures').\
    \ This is required by Percolator and hence by default enabled. (default: 'true'\
    \ valid: 'true', 'false')"
  id: add_features
  inputBinding:
    prefix: -add_features
  type: boolean
- doc: "Maximum number of modifications per peptide. If this value is large, the search\
    \ may take very long. (default: '2' min: '0')"
  id: max_mods
  inputBinding:
    prefix: -max_mods
  type: string
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
