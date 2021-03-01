class: CommandLineTool
id: poretools_qualpos.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_min_length
  doc: Minimum read length to be included in analysis.
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: Maximum read length to be included in analysis.
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_bin_width
  doc: 'The width of bins (default: 1000 bp).'
  type: long?
  inputBinding:
    prefix: --bin-width
- id: in_type
  doc: "Which type of reads should be analyzed? Def.=all,\nchoices=[all, fwd, rev,\
    \ 2D, fwd,rev, best]"
  type: long?
  inputBinding:
    prefix: --type
- id: in_start
  doc: Only analyze reads from after start timestamp
  type: string?
  inputBinding:
    prefix: --start
- id: in_end
  doc: Only analyze reads from before end timestamp
  type: string?
  inputBinding:
    prefix: --end
- id: in_high_quality
  doc: Only analyze reads with more complement events than
  type: boolean?
  inputBinding:
    prefix: --high-quality
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
- id: in_template_dot
  doc: --saveas STRING       Save the plot to a file named filename.extension (e.g.
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
- poretools
- qualpos
