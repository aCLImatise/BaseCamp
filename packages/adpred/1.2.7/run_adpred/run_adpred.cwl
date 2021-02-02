class: CommandLineTool
id: run_adpred.cwl
inputs:
- id: in_id
  doc: '| --uniprot-id'
  type: boolean
  inputBinding:
    prefix: -id
- id: in___sequence
  doc: '| --sequence'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__localpsipred_pathto
  doc: '| --local-psipred <path_to_"run_psipred">'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_sm
  doc: '| --saturated-mutagenesis (list of start positions separated by comma. Ends
    are starts+30)'
  type: boolean
  inputBinding:
    prefix: -sm
- id: in__outputprefix_empty
  doc: '| --output-prefix (if empty will use protein.id. if prot_id not provided it
    will be empty)'
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run-adpred
