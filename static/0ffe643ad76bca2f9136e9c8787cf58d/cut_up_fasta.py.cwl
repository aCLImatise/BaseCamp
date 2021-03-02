class: CommandLineTool
id: cut_up_fasta.py.cwl
inputs:
- id: in_chunk_size
  doc: Chunk size
  type: long?
  inputBinding:
    prefix: --chunk_size
- id: in_overlap_size
  doc: Overlap size
  type: long?
  inputBinding:
    prefix: --overlap_size
- id: in_merge_last
  doc: Concatenate final part to last contig
  type: boolean?
  inputBinding:
    prefix: --merge_last
- id: in_bed_file
  doc: "BEDfile to be created with exact regions of the\noriginal contigs corresponding\
    \ to the newly created\ncontigs\n"
  type: File?
  inputBinding:
    prefix: --bedfile
- id: in_contigs
  doc: Fasta files with contigs
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
- cut_up_fasta.py
