class: CommandLineTool
id: Mobius.py.cwl
inputs:
- id: splice_junctions
  doc: The name of the Splice Junctions tab file (in the format of the one STAR produces)
  type: string
  inputBinding:
    position: 0
- id: genome_fast_a
  doc: A fasta file containing the sequence for all genes in genome
  type: string
  inputBinding:
    position: 1
- id: force_trans
  doc: Force blocks where annotated transcripts start and end
  type: boolean
  inputBinding:
    prefix: -forceTrans
- id: an_no_trans
  doc: Flattened SuperTranscript annotation file
  type: string
  inputBinding:
    prefix: -AnnoTrans
- id: read_thresh
  doc: The minimum number of reads in all combined samples required to support a splice
    junction (default=5)
  type: string
  inputBinding:
    prefix: -readThresh
outputs: []
cwlVersion: v1.1
baseCommand:
- Mobius.py
