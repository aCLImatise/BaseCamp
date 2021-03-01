class: CommandLineTool
id: gtftk_divergent.cwl
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
- id: in_chrom_info
  doc: 'Tabulated two-columns file. Chromosomes as column 1 and their sizes as column
    2 (default: None)'
  type: boolean?
  inputBinding:
    prefix: --chrom-info
- id: in_upstream
  doc: "Extend the promoter in 5' by a given value (int). Defines the region around\
    \ the tss. (default: 1500)"
  type: boolean?
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: "Extend the region in 3' by a given value (int). Defines the region around\
    \ the tss. (default: 1500)"
  type: boolean?
  inputBinding:
    prefix: --downstream
- id: in_no_annotation
  doc: 'Do not annotate the GTF. Just select the divergent transcripts. (default:
    False)'
  type: boolean?
  inputBinding:
    prefix: --no-annotation
- id: in_no_strand_ness
  doc: 'Do not consider strandness (only look whether the promoter from a transcript
    overlaps with the promoter from another gene). (default: False)'
  type: boolean?
  inputBinding:
    prefix: --no-strandness
- id: in_key_name
  doc: 'The name of the key. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --key-name
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
- divergent
