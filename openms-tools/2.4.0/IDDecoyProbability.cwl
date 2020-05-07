class: CommandLineTool
id: IDDecoyProbability.cwl
inputs:
- id: in
  doc: "Identification input of combined forward decoy search (reindex with PeptideIndexer\
    \ first) (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: fwd_in
  doc: "Identification input of forward run (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -fwd_in
- id: rev_in
  doc: "Identification input of decoy run (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -rev_in
- id: out
  doc: "*       Identification output with forward scores converted to probabilities\
    \ (valid formats: 'idXML')"
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
- id: decoy_algorithm
  doc: Algorithm parameter subsection
  type: boolean
  inputBinding:
    prefix: '- decoy_algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- IDDecoyProbability
