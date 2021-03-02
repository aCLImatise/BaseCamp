class: CommandLineTool
id: gtftk_tabulate.cwl
inputs:
- id: in_select_transcript_ids
  doc: 'A shortcuts for "-k transcript_id". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-transcript-ids
- id: in_select_gene_ids
  doc: 'A shortcuts for "-k gene_id". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-gene_ids
- id: in_select_gene_names
  doc: 'A shortcuts for "-k gene_name". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-gene-names
- id: in_select_exon_ids
  doc: 'A shortcuts for "-k exon_ids". (default: False)'
  type: boolean?
  inputBinding:
    prefix: --select-exon-ids
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
- id: in_separator
  doc: 'The output field separator. (default: )'
  type: boolean?
  inputBinding:
    prefix: --separator
- id: in_key
  doc: 'A comma-separated list of key names. (default: *)'
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_unique
  doc: 'Print a non redondant list of lines. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --unique
- id: in_no_header
  doc: "Don't print the header line. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_no_unset
  doc: "Don't print lines containing '.' (unset values) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-unset
- id: in_accept_undef
  doc: "Print line for which the key is undefined (i.e, '?', does not exists). (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --accept-undef
- id: in_no_basic
  doc: "In case key is set to 'all' or '*', don't write basic attributes. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no-basic
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
- tabulate
