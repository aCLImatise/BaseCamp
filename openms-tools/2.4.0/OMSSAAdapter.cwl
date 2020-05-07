class: CommandLineTool
id: OMSSAAdapter.cwl
inputs:
- id: in
  doc: "*                            Input file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                           Output file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: precursor_mass_tolerance
  doc: "Precursor monoisotopic mass tolerance (default: '10')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: precursor_error_units
  doc: "Unit of precursor mass tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -precursor_error_units
- id: fragment_mass_tolerance
  doc: "Fragment mass error in Dalton (default: '0.3')"
  type: string
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: database
  doc: "*              NCBI formatted FASTA files. The .psq filename should be given,\
    \ e.g. 'SwissProt.fasta.psq'. If the filename does not end in '.psq' (e.g., SwissProt.fasta)\
    \ the psq suffix  will be added automatically. Non-existing relative file-names\
    \ are looked up via'OpenMS.ini:id_db_dir' (valid formats: 'psq', 'fasta')"
  type: string
  inputBinding:
    prefix: -database
- id: min_precursor_charge
  doc: "Minimum precursor ion charge (default: '1')"
  type: string
  inputBinding:
    prefix: -min_precursor_charge
- id: max_precursor_charge
  doc: "Maximum precursor ion charge (default: '3')"
  type: string
  inputBinding:
    prefix: -max_precursor_charge
- id: fixed_modifications
  doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
    \ (C)' or 'Oxidation (M)' (default: '[Carbamidomethyl (C)]' valid: '15N-oxobutano\
    \ ic (N-term C)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl: 13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Ace tylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)',\
    \ 'Ala->Glu (A)', 'Ala->Gly (A)', 'Ala ... (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -fixed_modifications
- id: variable_modifications
  doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
    \ 'Carbamidomethyl (C)' or 'Oxidation (M)' (default: '[Oxidation (M)]' valid:\
    \ '15N-oxobutanoic  (N-term C)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl\
    \ (C)', '2-nitrobenzyl (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)',\
    \ '3-phosphoglyceryl (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE\
    \ (K)', '4-ONE+Delta:H(-2)O(-1) (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1)\
    \ (K)', '4AcAllylGal (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)',\
    \ 'Acetyl (C)', 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl\
    \ (T)', 'Acetyl (Y)', 'Acetyl: 13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3)\
    \ (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Ace tylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)',\
    \ 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4)\
    \ (T)', 'AHA-Alkyne (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)',\
    \ 'Ahx2+Hsl (C-term)', 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys\
    \ (A)', 'Ala->Gln (A)', 'Ala->Glu (A)', 'Ala->Gly (A)', 'Ala ... (K)', 'ZGB (K)',\
    \ 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -variable_modifications
- id: om_ssa_executable
  doc: "*        The 'omssacl' executable of the OMSSA installation"
  type: string
  inputBinding:
    prefix: -omssa_executable
- id: v
  doc: "Number of missed cleavages allowed (default: '1')"
  type: long
  inputBinding:
    prefix: -v
- id: enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Trypsin/P',\
    \ 'PepsinA', 'TrypChymo', 'Lys-C/P', 'Formic_acid', 'Lys-C', 'Trypsin', 'no cleavage',\
    \ 'glut amyl endopeptidase', 'unspecific cleavage', 'Chymotrypsin', 'Asp-N_ambic',\
    \ 'Arg-C', 'Asp-N', 'CNBr')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: hl
  doc: "Maximum number of hits retained for one spectrum. Note: even when set to 1\
    \ OMSSA may report multiple hits with different charge states (default: '30')"
  type: long
  inputBinding:
    prefix: -hl
- id: he
  doc: "The maximum e-value allowed in the hit list. If you set this parameter too\
    \ small (e.g., he=1), this will effectively introduce FDR filtering. Thus, allowing\
    \ a less strin gent FDR during post-processing will nevertheless return the (better)\
    \ FDR introduced here, since mediocre hits are not even reported. (default: '1000')"
  type: double
  inputBinding:
    prefix: -he
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
- OMSSAAdapter
