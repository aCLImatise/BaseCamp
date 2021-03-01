class: CommandLineTool
id: gtftk_bigwig_to_bed.cwl
inputs:
- id: in_input_file
  doc: 'Path to the bigwig file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'The output BED file. (default: <stdout>)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_chrom_list
  doc: 'The list of chromosomes of interest. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --chrom-list
- id: in_expression
  doc: 'A boolean expression where s is the signal (e.g; s > 0 and s < 0.5). (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --expression
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'The output BED file. (default: <stdout>)'
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
- bigwig_to_bed
