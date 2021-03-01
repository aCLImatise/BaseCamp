class: CommandLineTool
id: rextract.cwl
inputs:
- id: in_debug
  doc: increase output verbosity and perform additional
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_limit
  doc: 'Limit of FASTQ reads to extract. Default: no limit'
  type: long?
  inputBinding:
    prefix: --limit
- id: in_max_reads
  doc: "Maximum number of FASTQ reads to search for the taxa.\nDefault: no maximum"
  type: long?
  inputBinding:
    prefix: --maxreads
- id: in_nodes_path
  doc: "path for the nodes information files (nodes.dmp and\nnames.dmp from NCBI)"
  type: File?
  inputBinding:
    prefix: --nodespath
- id: in_include
  doc: "NCBI taxid code to include a taxon and all underneath\n(multiple -i is available\
    \ to include several taxid).\nBy default all the taxa is considered for inclusion."
  type: string?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: "NCBI taxid code to exclude a taxon and all underneath\n(multiple -x is available\
    \ to exclude several taxid)"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_min_score
  doc: "minimum score/confidence of the classification of a\nread to pass the quality\
    \ filter; all pass by default"
  type: long?
  inputBinding:
    prefix: --minscore
- id: in_fast_q
  doc: Single FASTQ file (no paired-ends)
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_mate_one
  doc: "Paired-ends FASTQ file for mate 1s (filename usually\nincludes _1)"
  type: File?
  inputBinding:
    prefix: --mate1
- id: in_mate_two
  doc: "Paired-ends FASTQ file for mate 2s (filename usually\nincludes _2)"
  type: File?
  inputBinding:
    prefix: --mate2
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_checks
  doc: -f FILE, --file FILE  Centrifuge output file.
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
- rextract
