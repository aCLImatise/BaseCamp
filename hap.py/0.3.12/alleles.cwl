#!/usr/bin/env cwl-runner

baseCommand:
- alleles
class: CommandLineTool
cwlVersion: v1.0
id: alleles
inputs:
- doc: Input VCF file.
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output-file ] arg The output file name (VCF / BCF / VCF.gz).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: 'What GT to write: hemi | het | hom | half | first  for 1 | 0/1 | 1/1 | ./1
    | first sample GT; default  is half'
  id: gt
  inputBinding:
    prefix: --gt
  type: string
- doc: (=SAMPLE)   Output sample name
  id: sample
  inputBinding:
    prefix: --sample
  type: string
