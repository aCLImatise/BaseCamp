class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/evaluate_gtf.pl.cwl
inputs:
- id: input_files_gtf
  doc: ': Input files are gtf not lists'
  type: boolean
  inputBinding:
    prefix: -g
- id: quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean
  inputBinding:
    prefix: -q
- id: evaluate_alternative_faster
  doc: ': Do not evaluate for alternative splicing events. (Faster)'
  type: boolean
  inputBinding:
    prefix: -A
- id: _verbose_mode
  doc: ': Verbose mode'
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
- evaluate_gtf.pl
