class: CommandLineTool
id: evaluate_gtf.pl.cwl
inputs:
- id: in_input_files_gtf
  doc: ': Input files are gtf not lists'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_evaluate_alternative_faster
  doc: ': Do not evaluate for alternative splicing events. (Faster)'
  type: boolean
  inputBinding:
    prefix: -A
- id: in__verbose_mode
  doc: ': Verbose mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- evaluate_gtf.pl
