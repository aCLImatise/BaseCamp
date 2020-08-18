class: CommandLineTool
id: ../../../get_overlap_stats.pl.cwl
inputs:
- id: input_files_gtf
  doc: ': Input files are in GTF format.'
  type: boolean
  inputBinding:
    prefix: -g
- id: quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_mode
  doc: ': Verbose mode.'
  type: boolean
  inputBinding:
    prefix: -v
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- get_overlap_stats.pl
