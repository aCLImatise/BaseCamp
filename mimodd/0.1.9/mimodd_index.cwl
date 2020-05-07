class: CommandLineTool
id: mimodd_index.cwl
inputs:
- id: index_type
  doc: the type of index to be generated; use "snap" to create a reference genome
    index for the snap alignment tool, "fai" to produce a samtools-style reference
    index, "bai" for a bam file index that can be used, e.g., with the varcall tool
    and is required by third- party tools like IGV.
  type: string
  inputBinding:
    position: 0
- id: file_to_index
  doc: the fasta (reference genome) or bam (aligned reads) input file to index
  type: File
  inputBinding:
    position: 1
- id: output
  doc: 'specifies the location at which to save the index (default: save the index
    alongside the input file as <input file>.<INDEX_TYPE> for indices of type "fai"
    and "bai", or in a directory <input file>.snap_index)'
  type: File
  inputBinding:
    prefix: --output
- id: threads
  doc: maximum number of threads to use (overrides config setting)
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: suppress original messages from underlying tools
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: idx_seed_size
  doc: 'Seed size used in building the index (default: 20)'
  type: string
  inputBinding:
    prefix: --idx-seedsize
- id: idx_slack
  doc: 'Hash table slack for indexing (default: 0.3)'
  type: string
  inputBinding:
    prefix: --idx-slack
- id: idx_overflow
  doc: 'factor (between 1 and 1000) to set the size of the index build overflow space
    (default: 40)'
  type: string
  inputBinding:
    prefix: --idx-overflow
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- index
