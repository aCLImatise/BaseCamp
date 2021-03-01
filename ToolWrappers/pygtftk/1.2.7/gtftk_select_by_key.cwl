class: CommandLineTool
id: gtftk_select_by_key.cwl
inputs:
- id: in_value
  doc: 'A comma-separated list of values. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --value
- id: in_file_with_values
  doc: 'A file containing values as a single column. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --file-with-values
- id: in_select_transcripts
  doc: 'A shortcuts for "-k feature -v transcript". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-transcripts
- id: in_select_genes
  doc: 'A shortcuts for "-k feature -v gene". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-genes
- id: in_select_exons
  doc: 'A shortcuts for "-k feature -v exon". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-exons
- id: in_select_cds
  doc: 'A shortcuts for "-k feature -v CDS". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-cds
- id: in_select_start_codon
  doc: 'A shortcuts for "-k feature -v start_codon". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-start-codon
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
- id: in_key
  doc: 'The key name. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_col
  doc: 'The column number (one-based) that contains the values in the file. File is
    tab-delimited. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --col
- id: in_invert_match
  doc: 'Not/invert match. Select lines whose selected key is not associated with the
    selected values. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --invert-match
- id: in_bed_format
  doc: 'Ask for bed format output. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bed-format
- id: in_names
  doc: 'If Bed output. The key(s) that should be used as name. (default: gene_id,transcript_id)'
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_separator
  doc: 'If Bed output. The separator to be used for separating name elements (see
    -n). (default: |)'
  type: boolean?
  inputBinding:
    prefix: --separator
- id: in_log
  doc: 'Print some statistics about selected features. To be used in conjunction with
    -V 1/2. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --log
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
- id: in_optional_arguments
  doc: 'optional arguments:'
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1
cwlVersion: v1.1
baseCommand:
- gtftk
- select_by_key
