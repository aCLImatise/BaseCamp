#!/usr/bin/env cwl-runner

baseCommand:
- find-positions-used.pl
class: CommandLineTool
cwlVersion: v1.0
id: find-positions-used.pl
inputs:
- doc: start   end
  id: chromosome
  inputBinding:
    position: 0
  type: string
- doc: ':  Core positions file from vcf2core.pl (GFF format).'
  id: core_pos
  inputBinding:
    prefix: --core-pos
  type: boolean
- doc: ': Bad positions file, format of'
  id: bad_pos
  inputBinding:
    prefix: --bad-pos
  type: boolean
- doc: ': Print in tab-deliminted format'
  id: tab
  inputBinding:
    prefix: --tab
  type: boolean
- doc: ':  Reference fasta file.'
  id: reference
  inputBinding:
    prefix: --reference
  type: boolean
