class: CommandLineTool
id: PeptideIndexer.cwl
inputs:
- id: in_in
  doc: "*                      Input idXML file containing the identifications. (valid\
    \ formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_fast_a
  doc: "*                   Input sequence database in FASTA format. Non-existing\
    \ relative filenames are looked up via 'OpenMS.ini:id_db_dir' (valid formats:\
    \ 'fasta')"
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_out
  doc: "*                     Output idXML file. (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_decoy_string
  doc: String that was appended (or prefixed - see 'decoy_string_position' flag below)
    to the accessions in the protein database to indicate decoy proteins. If empty
    (default), it's determined automatically (checking for common terms, both as prefix
    and suffix).
  type: string?
  inputBinding:
    prefix: -decoy_string
- id: in_decoy_string_position
  doc: "Is the 'decoy_string' prepended (prefix) or appended (suffix) to the protein\
    \ accession? (ignored if decoy_string is empty) (default: 'prefix' valid: 'prefix',\
    \ 'suffix')"
  type: string?
  inputBinding:
    prefix: -decoy_string_position
- id: in_missing_decoy_action
  doc: "Action to take if NO peptide was assigned to a decoy protein (which indicates\
    \ wrong database or decoy string): 'error' (exit with error, no output), 'warn'\
    \ (exit with success, warning message), 'silent' (no action is taken, not even\
    \ a warning) (default: 'error' valid: 'error', 'warn', 'silent')"
  type: string?
  inputBinding:
    prefix: -missing_decoy_action
- id: in_write_protein_sequence
  doc: If set, the protein sequences are stored as well.
  type: boolean?
  inputBinding:
    prefix: -write_protein_sequence
- id: in_write_protein_description
  doc: If set, the protein description is stored as well.
  type: boolean?
  inputBinding:
    prefix: -write_protein_description
- id: in_keep_unreferenced_proteins
  doc: If set, protein hits which are not referenced by any peptide are kept.
  type: boolean?
  inputBinding:
    prefix: -keep_unreferenced_proteins
- id: in_allow_unmatched
  doc: If set, unmatched peptide sequences are allowed. By default (i.e. if this flag
    is not set) the program terminates with an error on unmatched peptides.
  type: boolean?
  inputBinding:
    prefix: -allow_unmatched
- id: in_aaa_max
  doc: "Maximal number of ambiguous amino acids (AAAs) allowed when matching to a\
    \ protein database with AAAs. AAAs are B, J, Z and X! (default: '3' min: '0' max:\
    \ '10')"
  type: long?
  inputBinding:
    prefix: -aaa_max
- id: in_mismatches_max
  doc: "Maximal number of mismatched (mm) amino acids allowed when matching to a protein\
    \ database. The required runtime is exponential in the number of mm's; apply with\
    \ care. MM's are allowed in addition to AAA's. (default: '0' min: '0' max: '10')"
  type: long?
  inputBinding:
    prefix: -mismatches_max
- id: in_il_equivalent
  doc: Treat the isobaric amino acids isoleucine ('I') and leucine ('L') as equivalent
    (indistinguishable). Also occurences of 'J' will be treated as 'I' thus avoiding
    ambiguous matching.
  type: boolean?
  inputBinding:
    prefix: -IL_equivalent
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                     Output idXML file. (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- PeptideIndexer
