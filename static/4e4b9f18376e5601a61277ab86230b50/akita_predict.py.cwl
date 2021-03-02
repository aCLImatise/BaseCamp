class: CommandLineTool
id: akita_predict.py.cwl
inputs:
- id: in_bed_file_describing
  doc: BED file describing regions so we can output BigWig
  type: File?
  inputBinding:
    prefix: -b
- id: in_mc
  doc: 'Monte carlo test iterations [Default: 0]'
  type: long?
  inputBinding:
    prefix: --mc
- id: in_output_directory_defaulttestout
  doc: "Output directory for test statistics [Default:\ntest_out]"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_rc
  doc: 'Average the fwd and rc predictions [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_shifts
  doc: 'Ensemble prediction shifts [Default: 0]'
  type: long?
  inputBinding:
    prefix: --shifts
- id: in_file_specifying_indexes
  doc: File specifying target indexes and labels in table
  type: File?
  inputBinding:
    prefix: -t
- id: in_tfr
  doc: "TFR pattern string appended to data_dir/tfrecords for\nsubsetting [Default:\
    \ none]\n"
  type: string?
  inputBinding:
    prefix: --tfr
- id: in_genomefile_chromosome_length
  doc: '-g GENOME_FILE       Chromosome length information [Default: /usr/local/shar'
  type: string
  inputBinding:
    position: 0
- id: in_format
  doc: --ti=TRACK_INDEXES   Comma-separated list of target indexes to output BigWig
  type: string
  inputBinding:
    position: 0
- id: in__splitsplitlabel_dataset
  doc: '--split=SPLIT_LABEL  Dataset split label for eg TFR pattern [Default: test]'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bed_file_describing
  doc: BED file describing regions so we can output BigWig
  type: File?
  outputBinding:
    glob: $(inputs.in_bed_file_describing)
- id: out_output_directory_defaulttestout
  doc: "Output directory for test statistics [Default:\ntest_out]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_defaulttestout)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- akita_predict.py
