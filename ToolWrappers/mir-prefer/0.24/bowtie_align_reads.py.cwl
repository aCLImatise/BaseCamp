class: CommandLineTool
id: bowtie_align_reads.py.cwl
inputs:
- id: in_reference
  doc: "Reference genome in fasta format. If you have multiple\nreference files, please\
    \ use multipe -r options. If you\nhave aready index the reference sequences, you\
    \ should\nuse the -i option."
  type: string?
  inputBinding:
    prefix: --reference
- id: in_index
  doc: "Use the supplied bowtie index file, instead of\nindexing the genome in the\
    \ script.\nIf your genome index files are in folder\n/user/home/index, with names\
    \ TAIR10.1.ebwt,\nTAIR10.2.ebwt, etc, you must use -i\n/user/home/index/TAIR10\
    \ for the -i option."
  type: File?
  inputBinding:
    prefix: --index
- id: in_temp
  doc: "Temporary folder to hold the bowtie index files. If\nnot supplied, the current\
    \ directory is used. Only used\nwith -r."
  type: Directory?
  inputBinding:
    prefix: --temp
- id: in_allowed_mismatch
  doc: "in bowtie. Number of mismatches allowed.\nDefault is 0."
  type: long?
  inputBinding:
    prefix: --allowedmismatch
- id: in_multi_alignment
  doc: "in bowtie.  Report up to <int> vaild\nalignment. Default is 20."
  type: long?
  inputBinding:
    prefix: --multialignment
- id: in_processor
  doc: Use multiple threads to do alignment.
  type: string?
  inputBinding:
    prefix: --processor
- id: in_filter_unmapped
  doc: Filter out unmapped alignments in the output.
  type: boolean?
  inputBinding:
    prefix: --filterunmapped
- id: in_fast_an
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bowtie-align-reads.py
