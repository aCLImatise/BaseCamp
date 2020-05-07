class: CommandLineTool
id: Fast5_to_seq_summary.cwl
inputs:
- id: fast5_dir
  doc: Directory containing fast5 files. Can contain multiple subdirectories
  type: string
  inputBinding:
    prefix: --fast5_dir
- id: seq_summary_fn
  doc: path of the summary sequencing file where to write the data extracted from
    the fast5 files
  type: string
  inputBinding:
    prefix: --seq_summary_fn
- id: max_fast5
  doc: 'Maximum number of file to try to parse. 0 to deactivate (default: 0)'
  type: long
  inputBinding:
    prefix: --max_fast5
- id: threads
  doc: 'Total number of threads to use. 1 thread is used for the reader and 1 for
    the writer. Minimum 3 (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: base_call_id
  doc: 'id of the basecalling group. By default leave to 0, but if you perfome multiple
    basecalling on the same fast5 files, this can be used to indicate the corresponding
    group (1, 2 ...) (default: 0)'
  type: string
  inputBinding:
    prefix: --basecall_id
- id: fields
  doc: "list of field names corresponding to attributes to try to fetch from the fast5\
    \ files (default: ['read_id', 'run_id', 'channel', 'start_time', 'sequence_length_template',\
    \ 'mean_qscore_template', 'calibration_strand_genome_template', 'barcode_arrangement'])"
  type: string[]
  inputBinding:
    prefix: --fields
- id: include_path
  doc: 'If given, the absolute path to the corresponding file is added in an extra
    column (default: False)'
  type: boolean
  inputBinding:
    prefix: --include_path
- id: verbose_level
  doc: 'Level of verbosity, from 2 (Chatty) to 0 (Nothing) (default: 0)'
  type: string
  inputBinding:
    prefix: --verbose_level
outputs: []
cwlVersion: v1.1
baseCommand:
- Fast5_to_seq_summary
