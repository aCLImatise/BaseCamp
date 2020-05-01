#!/usr/bin/env cwl-runner

baseCommand:
- gvcf2bed
class: CommandLineTool
cwlVersion: v1.0
id: gvcf2bed
inputs:
- doc: The input file
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output-file ] arg   The output file name (BED Format).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --reference ] arg     Reference fasta file.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --target-region ] arg Optional bed file with target regions'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
