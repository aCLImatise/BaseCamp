class: CommandLineTool
id: get_overlap_stats.pl.cwl
inputs:
- id: in_specify_overlap_mode
  doc: ": Specify overlap mode.  Must be a number selected from the list below.\n\
    Default is mode 1."
  type: long?
  inputBinding:
    prefix: -m
- id: in_input_files_gtf
  doc: ': Input files are in GTF format.'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in__verbose_mode
  doc: ': Verbose mode.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_overlap_stats.pl
