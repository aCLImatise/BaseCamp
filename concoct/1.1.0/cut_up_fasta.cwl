class: CommandLineTool
id: cut_up_fasta.py.cwl
inputs:
- id: contigs
  doc: Fasta files with contigs
  type: string
  inputBinding:
    position: 0
- id: chunk_size
  doc: Chunk size
  type: string
  inputBinding:
    prefix: --chunk_size
- id: overlap_size
  doc: Overlap size
  type: string
  inputBinding:
    prefix: --overlap_size
- id: merge_last
  doc: Concatenate final part to last contig
  type: boolean
  inputBinding:
    prefix: --merge_last
- id: bed_file
  doc: BEDfile to be created with exact regions of the original contigs corresponding
    to the newly created contigs
  type: string
  inputBinding:
    prefix: --bedfile
outputs: []
cwlVersion: v1.1
baseCommand:
- cut_up_fasta.py
