class: CommandLineTool
id: SequenceCoverageCalculator.cwl
inputs:
- id: in_database
  doc: "*  Input file containing the database in FASTA format (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -in_database
- id: in_peptides
  doc: "*  Input file containing the identified peptides (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in_peptides
- id: out
  doc: "Optional text output file. If left out, the output is written to the command\
    \ line. (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -out
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
- SequenceCoverageCalculator
