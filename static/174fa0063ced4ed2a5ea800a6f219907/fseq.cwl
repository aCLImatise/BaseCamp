class: CommandLineTool
id: fseq.cwl
inputs:
- id: b
  doc: background directory (default=none)
  type: string
  inputBinding:
    prefix: -b
- id: c
  doc: genomic count of sequence reads (defualt = calculated)
  type: string
  inputBinding:
    prefix: -c
- id: d
  doc: input directory (default=current directory)
  type: string
  inputBinding:
    prefix: -d
- id: f
  doc: fragment size (default=estimated from data)
  type: string
  inputBinding:
    prefix: -f
- id: l
  doc: feature length (default=600)
  type: string
  inputBinding:
    prefix: -l
- id: o
  doc: output directory (default=current directory)
  type: string
  inputBinding:
    prefix: -o
- id: of
  doc: <wig | bed | npf>   output format (default wig)
  type: boolean
  inputBinding:
    prefix: -of
- id: p
  doc: ploidy/input directory (default=none)
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: wiggle track step (default=1)
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: threshold (standard deviations) (default=4.0)
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
- id: wg
  doc: wg threshold set (defualt = calculated)
  type: string
  inputBinding:
    prefix: -wg
outputs: []
cwlVersion: v1.1
baseCommand:
- fseq
