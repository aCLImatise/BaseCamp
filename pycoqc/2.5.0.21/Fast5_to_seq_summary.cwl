#!/usr/bin/env cwl-runner

baseCommand:
- Fast5_to_seq_summary
class: CommandLineTool
cwlVersion: v1.0
id: fast5_to_seq_summary
inputs:
- doc: Directory containing fast5 files. Can contain multiple subdirectories
  id: fast5_dir
  inputBinding:
    prefix: --fast5_dir
  type: string
- doc: path of the summary sequencing file where to write the data extracted from
    the fast5 files
  id: seq_summary_fn
  inputBinding:
    prefix: --seq_summary_fn
  type: string
- doc: 'Maximum number of file to try to parse. 0 to deactivate (default: 0)'
  id: max_fast5
  inputBinding:
    prefix: --max_fast5
  type: long
- doc: 'Total number of threads to use. 1 thread is used for the reader and 1 for
    the writer. Minimum 3 (default: 4)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'id of the basecalling group. By default leave to 0, but if you perfome multiple
    basecalling on the same fast5 files, this can be used to indicate the corresponding
    group (1, 2 ...) (default: 0)'
  id: base_call_id
  inputBinding:
    prefix: --basecall_id
  type: string
- doc: "list of field names corresponding to attributes to try to fetch from the fast5\
    \ files (default: ['read_id', 'run_id', 'channel', 'start_time', 'sequence_length_template',\
    \ 'mean_qscore_template', 'calibration_strand_genome_template', 'barcode_arrangement'])"
  id: fields
  inputBinding:
    prefix: --fields
  type:
    items: string
    type: array
- doc: 'If given, the absolute path to the corresponding file is added in an extra
    column (default: False)'
  id: include_path
  inputBinding:
    prefix: --include_path
  type: boolean
- doc: 'Level of verbosity, from 2 (Chatty) to 0 (Nothing) (default: 0)'
  id: verbose_level
  inputBinding:
    prefix: --verbose_level
  type: string
