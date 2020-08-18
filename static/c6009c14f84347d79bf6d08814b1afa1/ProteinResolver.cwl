class: CommandLineTool
id: ../../../ProteinResolver.cwl
inputs:
- id: fast_a
  doc: "*                       Input database file (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -fasta
- id: in
  doc: "<file(s)>                        Input file(s) holding experimental data (valid\
    \ formats: 'idXML', 'consensusXML')"
  type: boolean
  inputBinding:
    prefix: -in
- id: in_path
  doc: Path to idXMLs or consensusXMLs files. Ignored if 'in' is given.
  type: File
  inputBinding:
    prefix: -in_path
- id: design
  doc: "Text file containing the experimental design. See documentation for specific\
    \ format requirements (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -design
- id: protein_groups
  doc: "Output file. Contains all protein groups (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -protein_groups
- id: peptide_table
  doc: "Output file. Contains one peptide per line and all proteins which contain\
    \ that peptide (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -peptide_table
- id: protein_table
  doc: "Output file. Contains one protein per line (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -protein_table
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
- ProteinResolver
