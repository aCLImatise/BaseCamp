class: CommandLineTool
id: embl_api_validator.cwl
inputs:
- id: assembly
  doc: 'genome assembly entries (default: false)'
  type: boolean
  inputBinding:
    prefix: -assembly
- id: de
  doc: 'Additional Fix :Adds/Fixes DE line(optional) (default: false)'
  type: boolean
  inputBinding:
    prefix: -de
- id: f
  doc: "File format(optional) Values:'embl','genbank','gff3','assembly' (default:\
    \ embl)"
  type: boolean
  inputBinding:
    prefix: -f
- id: filter
  doc: -filter <prefix> Store entries in <prefix>_good.txt and <prefix>_bad.txt files
    in the working directory. Entries with errors are stored in the bad file and entries
    without errors are stored in the good file. (optional)(default :false)
  type: boolean
  inputBinding:
    prefix: -filter
- id: fix
  doc: "Fixes entries in input files. Stores input files in 'original_files' folder.\
    \ (optional) (default: false)"
  type: boolean
  inputBinding:
    prefix: -fix
- id: fix_diagnose
  doc: "Creates 'diagnose' folder in the current directory with original entries in\
    \ <filename>_origin file and the fixed entries in <filename>_fixed file. Only\
    \ fixed entries will be stored in these files.(optional)  (default: false)"
  type: boolean
  inputBinding:
    prefix: -fix_diagnose
- id: l
  doc: 'Log level(optional) Values : 0(Quiet), 1(Summary), 2(Verbose) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -l
- id: low_memory
  doc: 'Runs in low memory usage mode. Writes error logs but does not show message
    summary(optional) (default: false)'
  type: boolean
  inputBinding:
    prefix: -lowmemory
- id: min_gap_length
  doc: 'minimum gap length to generate assembly_gap/gap features, use assembly flag
    to add assembly_gap features (default: 0)'
  type: boolean
  inputBinding:
    prefix: -min_gap_length
- id: prefix
  doc: Adds prefix to report files
  type: boolean
  inputBinding:
    prefix: -prefix
- id: r
  doc: 'Remote, is this being run outside the EBI(optional) (default: false)'
  type: boolean
  inputBinding:
    prefix: -r
- id: skip
  doc: '-skip <errorcode1>,<errorcode2>,... Ignore specified errors.(optional)(default:false) '
  type: boolean
  inputBinding:
    prefix: -skip
- id: version
  doc: 'Displays implementation version of Jar (default: false)'
  type: boolean
  inputBinding:
    prefix: -version
- id: wrap
  doc: 'Turns on line wrapping in flat file writing (optional)  (default: false)'
  type: boolean
  inputBinding:
    prefix: -wrap
outputs: []
cwlVersion: v1.1
baseCommand:
- embl-api-validator
