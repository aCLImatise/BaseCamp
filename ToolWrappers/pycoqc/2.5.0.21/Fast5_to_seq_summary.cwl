class: CommandLineTool
id: Fast5_to_seq_summary.cwl
inputs:
- id: in_fast_five_dir
  doc: "Directory containing fast5 files. Can contain multiple\nsubdirectories"
  type: long?
  inputBinding:
    prefix: --fast5_dir
- id: in_seq_summary_fn
  doc: "path of the summary sequencing file where to write the\ndata extracted from\
    \ the fast5 files"
  type: File?
  inputBinding:
    prefix: --seq_summary_fn
- id: in_max_fast_five
  doc: "Maximum number of file to try to parse. 0 to\ndeactivate (default: 0)"
  type: long?
  inputBinding:
    prefix: --max_fast5
- id: in_threads
  doc: "Total number of threads to use. 1 thread is used for\nthe reader and 1 for\
    \ the writer. Minimum 3 (default:\n4)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_base_call_id
  doc: "id of the basecalling group. By default leave to 0,\nbut if you perfome multiple\
    \ basecalling on the same\nfast5 files, this can be used to indicate the\ncorresponding\
    \ group (1, 2 ...) (default: 0)"
  type: long?
  inputBinding:
    prefix: --basecall_id
- id: in_fields
  doc: "list of field names corresponding to attributes to try\nto fetch from the\
    \ fast5 files (default: ['read_id',\n'run_id', 'channel', 'start_time',\n'sequence_length_template',\
    \ 'mean_qscore_template',\n'calibration_strand_genome_template',\n'barcode_arrangement'])"
  type: string[]
  inputBinding:
    prefix: --fields
- id: in_include_path
  doc: "If given, the absolute path to the corresponding file\nis added in an extra\
    \ column (default: False)"
  type: boolean?
  inputBinding:
    prefix: --include_path
- id: in_verbose_level
  doc: "Level of verbosity, from 2 (Chatty) to 0 (Nothing)\n(default: 0)\n"
  type: long?
  inputBinding:
    prefix: --verbose_level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Fast5_to_seq_summary
