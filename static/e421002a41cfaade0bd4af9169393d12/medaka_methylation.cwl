class: CommandLineTool
id: medaka_methylation.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_guppy_two_sam
  doc: "Convert Guppy .fast5 files with methylation calls to .sam\nfile, output to\
    \ stdout."
  type: long
  inputBinding:
    position: 0
- id: in_call
  doc: Call methylation from .bam file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medaka
- methylation
