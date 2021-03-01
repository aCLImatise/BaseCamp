class: CommandLineTool
id: gtftk_select_by_intron_size.cwl
inputs:
- id: in_input_file
  doc: 'Path to the GTF file. Default to STDIN (default: <stdin>)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output file. (default: <stdout>)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_intron_size
  doc: 'The minimum intron size. (default: 100)'
  type: boolean?
  inputBinding:
    prefix: --intron-size
- id: in_merged
  doc: 'If selected, the sum of all intron lengths for a gene should be higher than
    s. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --merged
- id: in_delete_mono_exonic
  doc: 'Delete mono-exonic transcripts. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --delete-monoexonic
- id: in_add_intron_size
  doc: 'Add a new key containing intron_size (comma-separated in order of apppearance)
    or the sum of intron size (see -m). (default: False)'
  type: boolean?
  inputBinding:
    prefix: --add-intron-size
- id: in_invert_match
  doc: 'Keep genes with an intron whose size is above s and delete others. (default:
    False)'
  type: boolean?
  inputBinding:
    prefix: --invert-match
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
  doc: 'Output file. (default: <stdout>)'
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
- select_by_intron_size
