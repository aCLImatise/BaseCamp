class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gtf2gff.pl.cwl
inputs:
- id: print_exon
  doc: print exon features (may include CDS and UTR parts)
  type: boolean
  inputBinding:
    prefix: --printExon
- id: print_utr
  doc: print UTR features
  type: boolean
  inputBinding:
    prefix: --printUTR
- id: print_intron
  doc: print intron features
  type: boolean
  inputBinding:
    prefix: --printIntron
- id: gff_three
  doc: output in gff3 format
  type: boolean
  inputBinding:
    prefix: --gff3
- id: include_stop_in_cds
  doc: include stop codon in the CDS
  type: boolean
  inputBinding:
    prefix: --includeStopInCDS
- id: out
  doc: gff output file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gtf2gff.pl
