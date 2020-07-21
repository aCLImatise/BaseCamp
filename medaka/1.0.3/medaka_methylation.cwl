class: CommandLineTool
id: ../../../medaka_methylation.cwl
inputs:
- id: debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: guppy_two_sam
  doc: Convert Guppy .fast5 files with methylation calls to .sam file, output to stdout.
  type: string
  inputBinding:
    position: 0
- id: call
  doc: Call methylation from .bam file.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- methylation
