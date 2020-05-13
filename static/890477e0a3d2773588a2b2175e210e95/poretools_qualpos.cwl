class: CommandLineTool
id: poretools_qualpos.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: min_length
  doc: Minimum read length to be included in analysis.
  type: long
  inputBinding:
    prefix: --min-length
- id: max_length
  doc: Maximum read length to be included in analysis.
  type: long
  inputBinding:
    prefix: --max-length
- id: bin_width
  doc: 'The width of bins (default: 1000 bp).'
  type: string
  inputBinding:
    prefix: --bin-width
- id: type
  doc: Which type of reads should be analyzed? Def.=all, choices=[all, fwd, rev, 2D,
    fwd,rev, best]
  type: string
  inputBinding:
    prefix: --type
- id: start
  doc: Only analyze reads from after start timestamp
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: Only analyze reads from before end timestamp
  type: string
  inputBinding:
    prefix: --end
- id: high_quality
  doc: Only analyze reads with more complement events than template.
  type: boolean
  inputBinding:
    prefix: --high-quality
- id: save_as
  doc: Save the plot to a file named filename.extension (e.g. pdf, jpg)
  type: string
  inputBinding:
    prefix: --saveas
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- qualpos
