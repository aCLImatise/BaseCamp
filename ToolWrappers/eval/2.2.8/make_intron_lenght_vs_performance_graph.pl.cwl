class: CommandLineTool
id: make_intron_lenght_vs_performance_graph.pl.cwl
inputs:
- id: in_sets_minimum_bin
  doc: ': Sets the minimum bin start [default: min intron length];'
  type: long?
  inputBinding:
    prefix: -m
- id: in_sets_maximum_end
  doc: ': Sets the maximum bin end [default: max intron length];'
  type: long?
  inputBinding:
    prefix: -x
- id: in_sets_size_used
  doc: ": Sets the bin size [default: 1/10 length range]\nCannot be used with -B"
  type: long?
  inputBinding:
    prefix: -b
- id: in_sets_number_used
  doc: ": Sets the number of bins [default: 10]\nCannot be used with -b"
  type: long?
  inputBinding:
    prefix: -B
- id: in_input_files_gtf
  doc: ': Input files are gtf not lists'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in__verbose_mode
  doc: ': Verbose mode'
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
- make_intron_lenght_vs_performance_graph.pl
