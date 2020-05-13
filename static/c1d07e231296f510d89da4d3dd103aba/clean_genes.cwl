class: CommandLineTool
id: clean_genes.cwl
inputs:
- id: gff_fname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msa_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: refseq
  doc: (Required with --msa-format MAF)  Complete reference  sequence for alignment
    (FASTA format).
  type: string
  inputBinding:
    prefix: --refseq
- id: offset_5
  doc: (Default 0)  Offset of canonical "GT" with respect to boundary  on *intron
    side* of annotated 5' splice sites.  Useful with annotations that describe a window
    around the canonical splice site.
  type: string
  inputBinding:
    prefix: --offset5
- id: offset_3
  doc: (Default 0)  Offset of canonical "AG" with respect to boundary  on intron side
    of annotated 3' splice sites.
  type: string
  inputBinding:
    prefix: --offset3
- id: log
  doc: Write human-readable log to specified file.
  type: string
  inputBinding:
    prefix: --log
- id: machine_log
  doc: Like --log, but produces more concise, machine-readable log.
  type: string
  inputBinding:
    prefix: --machine-log
- id: stats
  doc: Write statistics on retained and discarded features to specified file.
  type: string
  inputBinding:
    prefix: --stats
- id: discards
  doc: Write discarded features to specified file.
  type: string
  inputBinding:
    prefix: --discards
- id: no_output
  doc: Suppress output of "cleaned" features to stdout.  Useful if only log file and/or
    stats are of interest.
  type: boolean
  inputBinding:
    prefix: --no-output
outputs: []
cwlVersion: v1.1
baseCommand:
- clean_genes
