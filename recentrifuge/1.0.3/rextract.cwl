class: CommandLineTool
id: ../../../rextract.cwl
inputs:
- id: debug
  doc: increase output verbosity and perform additional checks
  type: boolean
  inputBinding:
    prefix: --debug
- id: file
  doc: Centrifuge output file.
  type: File
  inputBinding:
    prefix: --file
- id: limit
  doc: 'Limit of FASTQ reads to extract. Default: no limit'
  type: string
  inputBinding:
    prefix: --limit
- id: max_reads
  doc: 'Maximum number of FASTQ reads to search for the taxa. Default: no maximum'
  type: string
  inputBinding:
    prefix: --maxreads
- id: nodes_path
  doc: path for the nodes information files (nodes.dmp and names.dmp from NCBI)
  type: File
  inputBinding:
    prefix: --nodespath
- id: include
  doc: NCBI taxid code to include a taxon and all underneath (multiple -i is available
    to include several taxid). By default all the taxa is considered for inclusion.
  type: string
  inputBinding:
    prefix: --include
- id: exclude
  doc: NCBI taxid code to exclude a taxon and all underneath (multiple -x is available
    to exclude several taxid)
  type: string
  inputBinding:
    prefix: --exclude
- id: min_score
  doc: minimum score/confidence of the classification of a read to pass the quality
    filter; all pass by default
  type: string
  inputBinding:
    prefix: --minscore
- id: fast_q
  doc: Single FASTQ file (no paired-ends)
  type: File
  inputBinding:
    prefix: --fastq
- id: mate_one
  doc: Paired-ends FASTQ file for mate 1s (filename usually includes _1)
  type: File
  inputBinding:
    prefix: --mate1
- id: mate_two
  doc: Paired-ends FASTQ file for mate 2s (filename usually includes _2)
  type: File
  inputBinding:
    prefix: --mate2
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- rextract
