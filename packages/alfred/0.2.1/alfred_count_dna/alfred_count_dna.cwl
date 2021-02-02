class: CommandLineTool
id: alfred_count_dna.cwl
inputs:
- id: in_arg_min_quality
  doc: '[ --map-qual ] arg (=10)          min. mapping quality'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_coverage_file
  doc: '[ --outfile ] arg (="cov.gz")     coverage output file'
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_count_fragments
  doc: "[ --fragments ] arg               count illumina PE fragments using lower\n\
    and upper bound on insert size, i.e. -f\n0,10000"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_window_size
  doc: '[ --window-size ] arg (=10000)    window size'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_window_offset
  doc: '[ --window-offset ] arg (=10000)  window offset'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_windows_chr
  doc: '[ --window-num ] arg (=0)         #windows per chr, used if #n>0'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_interval_file
  doc: '[ --interval-file ] arg           interval file, used if present'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_aligned_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_coverage_file
  doc: '[ --outfile ] arg (="cov.gz")     coverage output file'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_coverage_file)
cwlVersion: v1.1
baseCommand:
- alfred
- count_dna
