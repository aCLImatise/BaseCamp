class: CommandLineTool
id: Mobius.py.cwl
inputs:
- id: in_force_trans
  doc: Force blocks where annotated transcripts start and end
  type: boolean
  inputBinding:
    prefix: -forceTrans
- id: in_an_no_trans
  doc: Flattened SuperTranscript annotation file
  type: File
  inputBinding:
    prefix: -AnnoTrans
- id: in_read_thresh
  doc: "The minimum number of reads in all combined samples\nrequired to support a\
    \ splice junction (default=5)\n"
  type: long
  inputBinding:
    prefix: -readThresh
- id: in_splice_junctions
  doc: "The name of the Splice Junctions tab file (in the\nformat of the one STAR\
    \ produces)"
  type: string
  inputBinding:
    position: 0
- id: in_genome_fast_a
  doc: A fasta file containing the sequence for all genes in
  type: string
  inputBinding:
    position: 1
- id: in_genome
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Mobius.py
