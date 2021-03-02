class: CommandLineTool
id: IDDecoyProbability.cwl
inputs:
- id: in_in
  doc: "Identification input of combined forward decoy search (reindex with PeptideIndexer\
    \ first) (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_fwd_in
  doc: "Identification input of forward run (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -fwd_in
- id: in_rev_in
  doc: "Identification input of decoy run (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -rev_in
- id: in_out
  doc: "*       Identification output with forward scores converted to probabilities\
    \ (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
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
hints: []
cwlVersion: v1.1
baseCommand:
- IDDecoyProbability
