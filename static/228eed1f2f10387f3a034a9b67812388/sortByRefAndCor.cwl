class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sortByRefAndCor.pl.cwl
inputs:
- id: contig_name_field
  doc: ':   contig name is in the field POS (1-based) of input lines.'
  type: string
  inputBinding:
    prefix: --k
- id: contig_cordinate_field
  doc: ':   contig cordinate is in the field COR (1-based) of input lines.'
  type: string
  inputBinding:
    prefix: --c
- id: tmp
  doc: ': temp directory [default=/tmp]'
  type: string
  inputBinding:
    prefix: --tmp
- id: input
  doc: input file to sort. If '-' is specified,  then reads from STDIN.
  type: string
  inputBinding:
    position: 0
- id: ref_dict
  doc: .fai file, or ANY file that has contigs, in the desired soting order, as its
    first column.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sortByRefAndCor.pl
