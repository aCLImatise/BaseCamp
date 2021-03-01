class: CommandLineTool
id: gtftk_intronic.cwl
inputs:
- id: in_input_file
  doc: 'Path to the GTF file. Default to STDIN (default: <stdin>)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output file (BED). (default: <stdout>)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_by_transcript
  doc: 'The intronic regions are returned for each transcript. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --by-transcript
- id: in_names
  doc: 'The key(s) that should be used as name (if -b is used). (default: gene_id,transcript_id)'
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_separator
  doc: 'The separator to be used for separating name elements (if -b is used). (default:
    |)'
  type: boolean?
  inputBinding:
    prefix: --separator
- id: in_intron_nb_in_name
  doc: "By default intron number is written in 'score' column. Force it to be written\
    \ in 'name' column. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --intron-nb-in-name
- id: in_no_feature_name
  doc: "Don't add the feature name ('intron') in the name column. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-feature-name
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean?
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
  doc: 'Output file (BED). (default: <stdout>)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_date)
hints: []
cwlVersion: v1.1
baseCommand:
- gtftk
- intronic
