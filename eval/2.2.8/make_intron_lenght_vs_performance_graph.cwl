class: CommandLineTool
id: ../../../make_intron_lenght_vs_performance_graph.pl.cwl
inputs:
- id: sets_minimum_start
  doc: ': Sets the minimum bin start [default: min intron length];'
  type: long
  inputBinding:
    prefix: -m
- id: sets_maximum_end
  doc: ': Sets the maximum bin end [default: max intron length];'
  type: long
  inputBinding:
    prefix: -x
- id: sets_bin_size
  doc: ': Sets the bin size [default: 1/10 length range]  Cannot be used with -B'
  type: string
  inputBinding:
    prefix: -b
- id: sets_number_used
  doc: ': Sets the number of bins [default: 10]  Cannot be used with -b'
  type: string
  inputBinding:
    prefix: -B
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
- make_intron_lenght_vs_performance_graph.pl
