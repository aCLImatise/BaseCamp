class: CommandLineTool
id: alleles.cwl
inputs:
- id: input_file
  doc: Input VCF file.
  type: string
  inputBinding:
    prefix: --input-file
- id: o
  doc: '[ --output-file ] arg The output file name (VCF / BCF / VCF.gz).'
  type: boolean
  inputBinding:
    prefix: -o
- id: gt
  doc: 'What GT to write: hemi | het | hom | half | first  for 1 | 0/1 | 1/1 | ./1
    | first sample GT; default  is half'
  type: string
  inputBinding:
    prefix: --gt
- id: sample
  doc: (=SAMPLE)   Output sample name
  type: string
  inputBinding:
    prefix: --sample
outputs: []
cwlVersion: v1.1
baseCommand:
- alleles
