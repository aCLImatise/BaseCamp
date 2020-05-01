#!/usr/bin/env cwl-runner

baseCommand:
- embl-api-validator
class: CommandLineTool
cwlVersion: v1.0
id: embl-api-validator
inputs:
- doc: 'genome assembly entries (default: false)'
  id: assembly
  inputBinding:
    prefix: -assembly
  type: boolean
- doc: 'Additional Fix :Adds/Fixes DE line(optional) (default: false)'
  id: de
  inputBinding:
    prefix: -de
  type: boolean
- doc: "File format(optional) Values:'embl','genbank','gff3','assembly' (default:\
    \ embl)"
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: -filter <prefix> Store entries in <prefix>_good.txt and <prefix>_bad.txt files
    in the working directory. Entries with errors are stored in the bad file and entries
    without errors are stored in the good file. (optional)(default :false)
  id: filter
  inputBinding:
    prefix: -filter
  type: boolean
- doc: "Fixes entries in input files. Stores input files in 'original_files' folder.\
    \ (optional) (default: false)"
  id: fix
  inputBinding:
    prefix: -fix
  type: boolean
- doc: "Creates 'diagnose' folder in the current directory with original entries in\
    \ <filename>_origin file and the fixed entries in <filename>_fixed file. Only\
    \ fixed entries will be stored in these files.(optional)  (default: false)"
  id: fix_diagnose
  inputBinding:
    prefix: -fix_diagnose
  type: boolean
- doc: 'Log level(optional) Values : 0(Quiet), 1(Summary), 2(Verbose) (default: 1)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: 'Runs in low memory usage mode. Writes error logs but does not show message
    summary(optional) (default: false)'
  id: low_memory
  inputBinding:
    prefix: -lowmemory
  type: boolean
- doc: 'minimum gap length to generate assembly_gap/gap features, use assembly flag
    to add assembly_gap features (default: 0)'
  id: min_gap_length
  inputBinding:
    prefix: -min_gap_length
  type: boolean
- doc: Adds prefix to report files
  id: prefix
  inputBinding:
    prefix: -prefix
  type: boolean
- doc: 'Remote, is this being run outside the EBI(optional) (default: false)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '-skip <errorcode1>,<errorcode2>,... Ignore specified errors.(optional)(default:false) '
  id: skip
  inputBinding:
    prefix: -skip
  type: boolean
- doc: 'Displays implementation version of Jar (default: false)'
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: 'Turns on line wrapping in flat file writing (optional)  (default: false)'
  id: wrap
  inputBinding:
    prefix: -wrap
  type: boolean
