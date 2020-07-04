class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasterq_dump_orig.2.10.7.cwl
inputs:
- id: outfile
  doc: 'output-file '
  type: boolean
  inputBinding:
    prefix: --outfile
- id: outdir
  doc: 'output-dir '
  type: boolean
  inputBinding:
    prefix: --outdir
- id: bufsize
  doc: 'size of file-buffer dflt=1MB '
  type: boolean
  inputBinding:
    prefix: --bufsize
- id: cur_cache
  doc: 'size of cursor-cache dflt=10MB '
  type: boolean
  inputBinding:
    prefix: --curcache
- id: mem
  doc: 'memory limit for sorting dflt=100MB '
  type: boolean
  inputBinding:
    prefix: --mem
- id: temp
  doc: 'where to put temp. files dflt=curr dir '
  type: boolean
  inputBinding:
    prefix: --temp
- id: threads
  doc: 'how many thread dflt=6 '
  type: boolean
  inputBinding:
    prefix: --threads
- id: progress
  doc: 'show progress '
  type: boolean
  inputBinding:
    prefix: --progress
- id: details
  doc: 'print details '
  type: boolean
  inputBinding:
    prefix: --details
- id: split_spot
  doc: 'split spots into reads '
  type: boolean
  inputBinding:
    prefix: --split-spot
- id: split_files
  doc: 'write reads into different files '
  type: boolean
  inputBinding:
    prefix: --split-files
- id: split_three
  doc: 'writes single reads in special file '
  type: boolean
  inputBinding:
    prefix: --split-3
- id: concatenate_reads
  doc: 'writes whole spots into one file '
  type: boolean
  inputBinding:
    prefix: --concatenate-reads
- id: stdout
  doc: 'print output to stdout '
  type: boolean
  inputBinding:
    prefix: --stdout
- id: force
  doc: 'force to overwrite existing file(s) '
  type: boolean
  inputBinding:
    prefix: --force
- id: rowid_as_name
  doc: 'use row-id as name '
  type: boolean
  inputBinding:
    prefix: --rowid-as-name
- id: skip_technical
  doc: 'skip technical reads '
  type: boolean
  inputBinding:
    prefix: --skip-technical
- id: include_technical
  doc: 'include technical reads '
  type: boolean
  inputBinding:
    prefix: --include-technical
- id: print_read_nr
  doc: 'print read-numbers '
  type: boolean
  inputBinding:
    prefix: --print-read-nr
- id: min_read_len
  doc: 'filter by sequence-len '
  type: boolean
  inputBinding:
    prefix: --min-read-len
- id: table
  doc: 'which seq-table to use in case of pacbio '
  type: boolean
  inputBinding:
    prefix: --table
- id: strict
  doc: 'terminate on invalid read '
  type: boolean
  inputBinding:
    prefix: --strict
- id: bases
  doc: 'filter by bases '
  type: boolean
  inputBinding:
    prefix: --bases
- id: append
  doc: 'append to output-file '
  type: boolean
  inputBinding:
    prefix: --append
- id: ngc
  doc: 'PATH to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fasterq-dump-orig.2.10.7
