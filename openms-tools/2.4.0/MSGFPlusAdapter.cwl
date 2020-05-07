class: CommandLineTool
id: MSGFPlusAdapter.cwl
inputs:
- id: in
  doc: "*                        Input file (MS-GF+ parameter '-s') (valid formats:\
    \ 'mzML', 'mzXML', 'mgf', 'ms2')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: mz_id_out
  doc: "Alternative output file (MS-GF+ parameter '-o') Either 'out' or 'mzid_out'\
    \ are required. They can be used together. (valid formats: 'mzid')"
  type: File
  inputBinding:
    prefix: -mzid_out
- id: executable
  doc: "*                MS-GF+ .jar file, e.g. 'c:\\program files\\MSGFPlus.jar'"
  type: File
  inputBinding:
    prefix: -executable
- id: database
  doc: "*                  Protein sequence database (FASTA file; MS-GF+ parameter\
    \ '-d'). Non-existing relative filenames are looked up via 'OpenMS.ini:id_db_dir'.\
    \ (valid formats: 'FASTA')"
  type: File
  inputBinding:
    prefix: -database
- id: add_decoys
  doc: Create decoy proteins (reversed sequences) and append them to the database
    for the search (MS-GF+ parameter '-tda'). This allows the calculation of FDRs,
    but should only be  used if the database does not already contain decoys.
  type: boolean
  inputBinding:
    prefix: -add_decoys
- id: precursor_mass_tolerance
  doc: "Precursor monoisotopic mass tolerance (MS-GF+ parameter '-t') (default: '10')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: precursor_error_units
  doc: "Unit of precursor mass tolerance (MS-GF+ parameter '-t') (default: 'ppm' valid:\
    \ 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -precursor_error_units
- id: isotope_error_range
  doc: "Range of allowed isotope peak errors (MS-GF+ parameter '-ti'). Takes into\
    \ account the error introduced by choosing a non-monoisotopic peak for fragmentation.\
    \ Combined with  'precursor_mass_tolerance'/'precursor_error_units', this determines\
    \ the actual precursor mass tolerance. E.g. for experimental mass 'exp' and calculated\
    \ mass 'calc', '-precu rsor_mass_tolerance 20 -precursor_error_units ppm -isotope_error_range\
    \ -1,2' tests '|exp - calc - n * 1.00335 Da| < 20 ppm' for n = -1, 0, 1, 2. (default:\
    \ '0,1')"
  type: string
  inputBinding:
    prefix: -isotope_error_range
- id: fragment_method
  doc: "Fragmentation method ('from_spectrum' relies on spectrum meta data and uses\
    \ CID as fallback option; MS-GF+ parameter '-m') (default: 'from_spectrum' valid:\
    \ 'from_spectrum',  'CID', 'ETD', 'HCD')"
  type: string
  inputBinding:
    prefix: -fragment_method
- id: instrument
  doc: "Instrument that generated the data ('low_res'/'high_res' refer to LCQ and\
    \ LTQ instruments; MS-GF+ parameter '-inst') (default: 'low_res' valid: 'low_res',\
    \ 'high_res', 'TOF', 'Q_Exactive')"
  type: string
  inputBinding:
    prefix: -instrument
- id: enzyme
  doc: "Enzyme used for digestion, or type of cleavage. Note: MS-GF+ does not support\
    \ blocking rules. (MS-GF+ parameter '-e') (default: 'Trypsin/P' valid: 'Alpha-lytic\
    \ protease',  'Arg-C/P', 'Asp-N/B', 'Chymotrypsin/P', 'Lys-C/P', 'Lys-N', 'Trypsin/P',\
    \ 'glutamyl endopeptidase', 'no cleavage', 'unspecific cleavage')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: protocol
  doc: "Labeling or enrichment protocol used, if any (MS-GF+ parameter '-p') (default:\
    \ 'automatic' valid: 'automatic', 'phospho', 'iTRAQ', 'iTRAQ_phospho', 'TMT',\
    \ 'none')"
  type: string
  inputBinding:
    prefix: -protocol
- id: tryptic
  doc: "Level of cleavage specificity required (MS-GF+ parameter '-ntt') (default:\
    \ 'fully' valid: 'non', 'semi', 'fully')"
  type: string
  inputBinding:
    prefix: -tryptic
- id: min_precursor_charge
  doc: "Minimum precursor ion charge (only used for spectra without charge information;\
    \ MS-GF+ parameter '-minCharge') (default: '2' min: '1')"
  type: string
  inputBinding:
    prefix: -min_precursor_charge
- id: max_precursor_charge
  doc: "Maximum precursor ion charge (only used for spectra without charge information;\
    \ MS-GF+ parameter '-maxCharge') (default: '3' min: '1')"
  type: string
  inputBinding:
    prefix: -max_precursor_charge
- id: min_peptide_length
  doc: "Minimum peptide length to consider (MS-GF+ parameter '-minLength') (default:\
    \ '6' min: '1')"
  type: string
  inputBinding:
    prefix: -min_peptide_length
- id: max_peptide_length
  doc: "Maximum peptide length to consider (MS-GF+ parameter '-maxLength') (default:\
    \ '40' min: '1')"
  type: string
  inputBinding:
    prefix: -max_peptide_length
- id: matches_per_spec
  doc: "Number of matches per spectrum to be reported (MS-GF+ parameter '-n') (default:\
    \ '1' min: '1')"
  type: string
  inputBinding:
    prefix: -matches_per_spec
- id: add_features
  doc: "<true/false>         Output additional features (MS-GF+ parameter '-addFeatures').\
    \ This is required by Percolator and hence by default enabled. (default: 'true'\
    \ valid: 'true', 'false')"
  type: boolean
  inputBinding:
    prefix: -add_features
- id: max_mods
  doc: "Maximum number of modifications per peptide. If this value is large, the search\
    \ may take very long. (default: '2' min: '0')"
  type: string
  inputBinding:
    prefix: -max_mods
- id: fixed_modifications
  doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
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
  type: string
  inputBinding:
    prefix: -fixed_modifications
- id: variable_modifications
  doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
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
  type: string
  inputBinding:
    prefix: -variable_modifications
- id: java_executable
  doc: The Java executable. Usually Java is on the system PATH. If Java is not found,
    use this parameter to specify the full path to Java
  type: File
  inputBinding:
    prefix: -java_executable
- id: java_memory
  doc: "Maximum Java heap size (in MB) (default: '3500')"
  type: string
  inputBinding:
    prefix: -java_memory
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
- MSGFPlusAdapter
