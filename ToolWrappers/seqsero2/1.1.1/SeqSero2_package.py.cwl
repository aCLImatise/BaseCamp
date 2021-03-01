class: CommandLineTool
id: SeqSero2_package.py.cwl
inputs:
- id: in_string_pathtoinputdata
  doc: '<string>: path/to/input_data'
  type: string[]
  inputBinding:
    prefix: -i
- id: in_int_forseparated_pairedend
  doc: "<int>: '1' for interleaved paired-end reads, '2' for\nseparated paired-end\
    \ reads, '3' for single reads, '4' for\ngenome assembly, '5' for nanopore fasta,\
    \ '6' for nanopore\nfastq"
  type: string?
  inputBinding:
    prefix: -t
- id: in_string_algorithms_defaultmemoptional
  doc: "<string>: algorithms for bwa mapping for allele mode;\n'mem' for mem, 'sam'\
    \ for samse/sampe; default=mem;\noptional; for now we only optimized for default\
    \ 'mem' mode"
  type: string?
  inputBinding:
    prefix: -b
- id: in_int_number_threads
  doc: "<int>: number of threads for allele mode, if p >4, only 4\nthreads will be\
    \ used for assembly since the amount of\nextracted reads is small, default=1"
  type: long?
  inputBinding:
    prefix: -p
- id: in_string_workflow_apply
  doc: "<string>: which workflow to apply, 'a'(raw reads allele\nmicro-assembly),\
    \ 'k'(raw reads and genome assembly k-mer),\ndefault=a"
  type: string?
  inputBinding:
    prefix: -m
- id: in_string_optional_specify
  doc: '<string>: optional, to specify a sample name in the report'
  type: string?
  inputBinding:
    prefix: -n
- id: in_flag_flagged_only
  doc: "<flag>: if '-c' was flagged, SeqSero2 will only output\nserotype prediction\
    \ without the directory containing log\nfiles"
  type: Directory?
  inputBinding:
    prefix: -c
- id: in_flag_flagged_not
  doc: "<flag>: if '-s' was flagged, SeqSero2 will not output\nheader in SeqSero_result.tsv"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_check
  doc: "<flag>: use '--check' flag to check the required"
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_d
  doc: ''
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_v_one_dot_one_dot_one
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
- id: in_output
  doc: '-d D              <string>: optional, to specify an output directory name,'
  type: string
  inputBinding:
    position: 1
- id: in_dependencies
  doc: -v, --version     show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_flag_flagged_only
  doc: "<flag>: if '-c' was flagged, SeqSero2 will only output\nserotype prediction\
    \ without the directory containing log\nfiles"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_flag_flagged_only)
- id: out_d
  doc: ''
  type: Directory?
  outputBinding:
    glob: $(inputs.in_d)
hints: []
cwlVersion: v1.1
baseCommand:
- SeqSero2_package.py
