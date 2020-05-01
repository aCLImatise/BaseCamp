#!/usr/bin/env cwl-runner

baseCommand:
- PeptideIndexer
class: CommandLineTool
cwlVersion: v1.0
id: peptideindexer
inputs:
- doc: "*                      Input idXML file containing the identifications. (valid\
    \ formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                   Input sequence database in FASTA format. Non-existing\
    \ relative filenames are looked up via 'OpenMS.ini:id_db_dir' (valid formats:\
    \ 'fasta')"
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: File
- doc: "*                     Output idXML file. (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: String that was appended (or prefixed - see 'decoy_string_position' flag below)
    to the accessions in the protein database to indicate decoy proteins. If empty
    (default), it's  determined automatically (checking for common terms, both as
    prefix and suffix).
  id: decoy_string
  inputBinding:
    prefix: -decoy_string
  type: string
- doc: "Is the 'decoy_string' prepended (prefix) or appended (suffix) to the protein\
    \ accession? (ignored if decoy_string is empty) (default: 'prefix' valid: 'prefix',\
    \ 'suffix')"
  id: decoy_string_position
  inputBinding:
    prefix: -decoy_string_position
  type: string
- doc: "Action to take if NO peptide was assigned to a decoy protein (which indicates\
    \ wrong database or decoy string): 'error' (exit with error, no output), 'warn'\
    \ (exit with success, warning message), 'silent' (no action is taken, not even\
    \ a warning) (default: 'error' valid: 'error', 'warn', 'silent')"
  id: missing_decoy_action
  inputBinding:
    prefix: -missing_decoy_action
  type: string
- doc: If set, the protein sequences are stored as well.
  id: write_protein_sequence
  inputBinding:
    prefix: -write_protein_sequence
  type: boolean
- doc: If set, the protein description is stored as well.
  id: write_protein_description
  inputBinding:
    prefix: -write_protein_description
  type: boolean
- doc: If set, protein hits which are not referenced by any peptide are kept.
  id: keep_unreferenced_proteins
  inputBinding:
    prefix: -keep_unreferenced_proteins
  type: boolean
- doc: If set, unmatched peptide sequences are allowed. By default (i.e. if this flag
    is not set) the program terminates with an error on unmatched peptides.
  id: allow_unmatched
  inputBinding:
    prefix: -allow_unmatched
  type: boolean
- doc: "Maximal number of ambiguous amino acids (AAAs) allowed when matching to a\
    \ protein database with AAAs. AAAs are B, J, Z and X! (default: '3' min: '0' max:\
    \ '10')"
  id: aaa_max
  inputBinding:
    prefix: -aaa_max
  type: string
- doc: "Maximal number of mismatched (mm) amino acids allowed when matching to a protein\
    \ database. The required runtime is exponential in the number of mm's; apply with\
    \ care. MM's  are allowed in addition to AAA's. (default: '0' min: '0' max: '10')"
  id: mismatches_max
  inputBinding:
    prefix: -mismatches_max
  type: string
- doc: Treat the isobaric amino acids isoleucine ('I') and leucine ('L') as equivalent
    (indistinguishable). Also occurences of 'J' will be treated as 'I' thus avoiding
    ambiguous matc hing.
  id: il_equivalent
  inputBinding:
    prefix: -IL_equivalent
  type: boolean
- doc: ":name <choice>            Enzyme which determines valid cleavage sites - e.g.\
    \ trypsin cleaves after lysine (K) or arginine (R), but not before proline (P).\
    \ (default: 'Trypsin' valid: 'Trypsin', 'Arg-C' , 'Arg-C/P', 'Asp-N', 'Asp-N/B',\
    \ 'Asp-N_ambic', 'Chymotrypsin', 'Chymotrypsin/P', 'CNBr', 'Formic_acid', 'Lys-C',\
    \ 'Lys-N', 'Lys-C/P', 'PepsinA', 'TrypChymo', 'Trypsin/P', 'V8- DE', 'V8-E', 'leukocyte\
    \ elastase', 'proline endopeptidase', 'glutamyl endopeptidase', 'Alpha-lytic protease',\
    \ '2-iodobenzoate', 'iodosobenzoate', 'staphylococcal protease/D', 'proline-endopeptidase/HKR',\
    \ 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'no cleavage', 'unspecific cleavage')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: boolean
- doc: ":specificity <choice>     Specificity of the enzyme. 'full': both internal\
    \ cleavage sites must match. 'semi': one of two internal cleavage sites must match.\
    \ 'none': allow all peptide hits no matter their context. Therefore, the enzyme\
    \ chosen does not play a role here (default: 'full' valid: 'full', 'semi', 'none')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: boolean
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
