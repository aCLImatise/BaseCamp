class: CommandLineTool
id: ldHgGene.cwl
inputs:
- id: implied_stop_after_cds
  doc: codon in GFF/GTF after CDS
  type: string
  inputBinding:
    prefix: -impliedStopAfterCds
outputs: []
cwlVersion: v1.1
baseCommand:
- ldHgGene
