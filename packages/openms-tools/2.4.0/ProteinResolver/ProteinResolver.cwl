class: CommandLineTool
id: ProteinResolver.cwl
inputs:
- id: in_fast_a
  doc: "*                       Input database file (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -fasta
- id: in_in
  doc: "<file(s)>                        Input file(s) holding experimental data (valid\
    \ formats: 'idXML', 'consensusXML')"
  type: boolean
  inputBinding:
    prefix: -in
- id: in_in_path
  doc: Path to idXMLs or consensusXMLs files. Ignored if 'in' is given.
  type: File
  inputBinding:
    prefix: -in_path
- id: in_design
  doc: "Text file containing the experimental design. See documentation for specific\
    \ format requirements (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -design
- id: in_protein_groups
  doc: "Output file. Contains all protein groups (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -protein_groups
- id: in_peptide_table
  doc: "Output file. Contains one peptide per line and all proteins which contain\
    \ that peptide (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -peptide_table
- id: in_protein_table
  doc: "Output file. Contains one protein per line (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -protein_table
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_protein_groups
  doc: "Output file. Contains all protein groups (valid formats: 'csv')"
  type: File
  outputBinding:
    glob: $(inputs.in_protein_groups)
- id: out_peptide_table
  doc: "Output file. Contains one peptide per line and all proteins which contain\
    \ that peptide (valid formats: 'csv')"
  type: File
  outputBinding:
    glob: $(inputs.in_peptide_table)
- id: out_protein_table
  doc: "Output file. Contains one protein per line (valid formats: 'csv')"
  type: File
  outputBinding:
    glob: $(inputs.in_protein_table)
cwlVersion: v1.1
baseCommand:
- ProteinResolver
