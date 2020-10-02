class: CommandLineTool
id: embl_api_validator.cwl
inputs:
- id: in_assembly
  doc: 'genome assembly entries (default: false)'
  type: boolean
  inputBinding:
    prefix: -assembly
- id: in_de
  doc: 'Additional Fix :Adds/Fixes DE line(optional) (default: false)'
  type: boolean
  inputBinding:
    prefix: -de
- id: in_file_formatoptional_values
  doc: "File format(optional) Values:'embl','genbank','gff3','assembly' (default:\
    \ embl)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_filter
  doc: -filter <prefix> Store entries in <prefix>_good.txt and <prefix>_bad.txt files
    in the working directory. Entries with errors are stored in the bad file and entries
    without errors are stored in the good file. (optional)(default :false)
  type: boolean
  inputBinding:
    prefix: -filter
- id: in_fix
  doc: "Fixes entries in input files. Stores input files in 'original_files' folder.\
    \ (optional) (default: false)"
  type: boolean
  inputBinding:
    prefix: -fix
- id: in_fix_diagnose
  doc: "Creates 'diagnose' folder in the current directory with original entries in\
    \ <filename>_origin file and the fixed entries in <filename>_fixed file. Only\
    \ fixed entries will be stored in these files.(optional)  (default: false)"
  type: boolean
  inputBinding:
    prefix: -fix_diagnose
- id: in_log_leveloptional_values
  doc: 'Log level(optional) Values : 0(Quiet), 1(Summary), 2(Verbose) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_low_memory
  doc: 'Runs in low memory usage mode. Writes error logs but does not show message
    summary(optional) (default: false)'
  type: boolean
  inputBinding:
    prefix: -lowmemory
- id: in_min_gap_length
  doc: 'minimum gap length to generate assembly_gap/gap features, use assembly flag
    to add assembly_gap features (default: 0)'
  type: boolean
  inputBinding:
    prefix: -min_gap_length
- id: in_prefix
  doc: Adds prefix to report files
  type: boolean
  inputBinding:
    prefix: -prefix
- id: in_remote_run_ebioptional
  doc: 'Remote, is this being run outside the EBI(optional) (default: false)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_skip
  doc: -skip <errorcode1>,<errorcode2>,... Ignore specified errors.(optional)(default:false)
  type: boolean
  inputBinding:
    prefix: -skip
- id: in_version
  doc: 'Displays implementation version of Jar (default: false)'
  type: boolean
  inputBinding:
    prefix: -version
- id: in_wrap
  doc: 'Turns on line wrapping in flat file writing (optional)  (default: false)'
  type: boolean
  inputBinding:
    prefix: -wrap
- id: in_en_a_validator
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- embl-api-validator
