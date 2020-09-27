class: CommandLineTool
id: gtftk_tss_numbering.cwl
inputs:
- id: in_input_file
  doc: 'Path to the GTF file. Default to STDIN. (default: <stdin>)'
  type: boolean
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output file. (default: <stdout>)'
  type: File
  inputBinding:
    prefix: --outputfile
- id: in_key_name
  doc: 'The name of the new key. (default: tss_number)'
  type: boolean
  inputBinding:
    prefix: --key-name
- id: in_compute_dist
  doc: "Add a key indicating the distance to the first tss (the most 5'). (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --compute-dist
- id: in_key_name_dist
  doc: 'If --compute-dist is true a name for that key. (default: dist_to_first_tss)'
  type: boolean
  inputBinding:
    prefix: --key-name-dist
- id: in_add_nb_tss_to_gene
  doc: 'Add the number of different tss to each gene (default: False)'
  type: boolean
  inputBinding:
    prefix: --add-nb-tss-to-gene
- id: in_gene_key
  doc: 'The name of the key if --add-nb-tss-to-gene is selected. (default: nb_tss)'
  type: boolean
  inputBinding:
    prefix: --gene-key
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
- tss_numbering
