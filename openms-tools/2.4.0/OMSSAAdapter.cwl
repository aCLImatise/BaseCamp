#!/usr/bin/env cwl-runner

baseCommand:
- OMSSAAdapter
class: CommandLineTool
cwlVersion: v1.0
id: omssaadapter
inputs:
- doc: "*                            Input file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                           Output file  (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Precursor monoisotopic mass tolerance (default: '10')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
  type: string
- doc: "Unit of precursor mass tolerance (default: 'ppm' valid: 'Da', 'ppm')"
  id: precursor_error_units
  inputBinding:
    prefix: -precursor_error_units
  type: string
- doc: "Fragment mass error in Dalton (default: '0.3')"
  id: fragment_mass_tolerance
  inputBinding:
    prefix: -fragment_mass_tolerance
  type: string
- doc: "*              NCBI formatted FASTA files. The .psq filename should be given,\
    \ e.g. 'SwissProt.fasta.psq'. If the filename does not end in '.psq' (e.g., SwissProt.fasta)\
    \ the psq suffix  will be added automatically. Non-existing relative file-names\
    \ are looked up via'OpenMS.ini:id_db_dir' (valid formats: 'psq', 'fasta')"
  id: database
  inputBinding:
    prefix: -database
  type: string
- doc: "Minimum precursor ion charge (default: '1')"
  id: min_precursor_charge
  inputBinding:
    prefix: -min_precursor_charge
  type: string
- doc: "Maximum precursor ion charge (default: '3')"
  id: max_precursor_charge
  inputBinding:
    prefix: -max_precursor_charge
  type: string
- doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
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
  id: fixed_modifications
  inputBinding:
    prefix: -fixed_modifications
  type: string
- doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
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
  id: variable_modifications
  inputBinding:
    prefix: -variable_modifications
  type: string
- doc: "*        The 'omssacl' executable of the OMSSA installation"
  id: om_ssa_executable
  inputBinding:
    prefix: -omssa_executable
  type: string
- doc: "Number of missed cleavages allowed (default: '1')"
  id: v
  inputBinding:
    prefix: -v
  type: long
- doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'Trypsin/P',\
    \ 'PepsinA', 'TrypChymo', 'Lys-C/P', 'Formic_acid', 'Lys-C', 'Trypsin', 'no cleavage',\
    \ 'glut amyl endopeptidase', 'unspecific cleavage', 'Chymotrypsin', 'Asp-N_ambic',\
    \ 'Arg-C', 'Asp-N', 'CNBr')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: "Maximum number of hits retained for one spectrum. Note: even when set to 1\
    \ OMSSA may report multiple hits with different charge states (default: '30')"
  id: hl
  inputBinding:
    prefix: -hl
  type: long
- doc: "The maximum e-value allowed in the hit list. If you set this parameter too\
    \ small (e.g., he=1), this will effectively introduce FDR filtering. Thus, allowing\
    \ a less strin gent FDR during post-processing will nevertheless return the (better)\
    \ FDR introduced here, since mediocre hits are not even reported. (default: '1000')"
  id: he
  inputBinding:
    prefix: -he
  type: double
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
