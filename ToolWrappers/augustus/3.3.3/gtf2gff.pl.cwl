class: CommandLineTool
id: gtf2gff.pl.cwl
inputs:
- id: in_print_exon
  doc: print exon features (may include CDS and UTR parts)
  type: boolean?
  inputBinding:
    prefix: --printExon
- id: in_print_utr
  doc: print UTR features
  type: boolean?
  inputBinding:
    prefix: --printUTR
- id: in_print_intron
  doc: print intron features
  type: boolean?
  inputBinding:
    prefix: --printIntron
- id: in_gff_three
  doc: output in gff3 format
  type: boolean?
  inputBinding:
    prefix: --gff3
- id: in_include_stop_in_cds
  doc: include stop codon in the CDS
  type: boolean?
  inputBinding:
    prefix: --includeStopInCDS
- id: in_out
  doc: gff output file
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
- gtf2gff.pl
