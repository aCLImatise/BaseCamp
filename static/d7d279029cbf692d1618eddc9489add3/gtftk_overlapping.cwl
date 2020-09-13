class: CommandLineTool
id: ../../../gtftk_overlapping.cwl
inputs:
- id: in_annotate_gtf
  doc: 'All lines of the original GTF will be printed. (default: False)'
  type: boolean
  inputBinding:
    prefix: --annotate-gtf
- id: in_input_file
  doc: 'Path to the GTF file. Default to STDIN (default: <stdin>)'
  type: boolean
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output file. (default: <stdout>)'
  type: File
  inputBinding:
    prefix: --outputfile
- id: in_chrom_info
  doc: 'Chromosome information. A tabulated two-columns file with chromosomes as column
    1 and sizes as column 2 (default: None)'
  type: boolean
  inputBinding:
    prefix: --chrom-info
- id: in_upstream
  doc: "Extend the region in 5'. Used to define the region around the TSS/TTS. (default:\
    \ 1500)"
  type: boolean
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: "Extend the region in 3'. Used to define the region around the TSS/TTS. (default:\
    \ 1500)"
  type: boolean
  inputBinding:
    prefix: --downstream
- id: in_feature_type
  doc: 'The feature of interest. (default: transcript)'
  type: boolean
  inputBinding:
    prefix: --feature-type
- id: in_same_stranded_ness
  doc: 'Require same strandedness (default: False)'
  type: boolean
  inputBinding:
    prefix: --same-strandedness
- id: in_diff_stranded_ness
  doc: 'Require different strandedness (default: False)'
  type: boolean
  inputBinding:
    prefix: --diff-strandedness
- id: in_invert_match
  doc: 'Not/Invert match. (default: False)'
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: in_key_name
  doc: 'The name of the key. (default: None)'
  type: boolean
  inputBinding:
    prefix: --key-name
- id: in_bool
  doc: 'When --annotate-gtf is used use 0 or 1 as key values (instead of overlapping
    transcripts id). (default: False)'
  type: boolean
  inputBinding:
    prefix: --bool
- id: in_annotate_all
  doc: "When --annotate-gtf annotate all transcripts (default value would be '0').\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --annotate-all
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean
  inputBinding:
    prefix: --write-message-to-file
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output file. (default: <stdout>)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File
  outputBinding:
    glob: $(inputs.in_no_date)
cwlVersion: v1.1
baseCommand:
- gtftk
- overlapping
