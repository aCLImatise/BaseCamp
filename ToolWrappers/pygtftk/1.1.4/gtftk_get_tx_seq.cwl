class: CommandLineTool
id: gtftk_get_tx_seq.cwl
inputs:
- id: in_input_file
  doc: 'Path to the GTF file. Default to STDIN (default: <stdin>)'
  type: boolean?
  inputBinding:
    prefix: --inputfile
- id: in_output_file
  doc: 'Output FASTA file. (default: <stdout>)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_genome
  doc: 'The genome in fasta format. Accept path with wildcards (e.g. *.fa). (default:
    None)'
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_with_introns
  doc: 'Set to true to include intronic regions. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --with-introns
- id: in_separator
  doc: 'To separate info in header. (default: |)'
  type: boolean?
  inputBinding:
    prefix: --separator
- id: in_label
  doc: 'A set of key for the header. (default: feature,transcript_id,gene_id,seqid,start,end)'
  type: boolean?
  inputBinding:
    prefix: --label
- id: in_sleuth_format
  doc: 'Produce output in sleuth format (still experimental). (default: False)'
  type: boolean?
  inputBinding:
    prefix: --sleuth-format
- id: in_delete_version
  doc: "In case of --sleuth-format, delete gene_id or transcript_id version number\
    \ (e.g '.2' in ENSG56765.2). (default: False)"
  type: boolean?
  inputBinding:
    prefix: --delete-version
- id: in_assembly
  doc: 'In case of --sleuth-format, an assembly version. (default: GRCm38)'
  type: boolean?
  inputBinding:
    prefix: --assembly
- id: in_del_chr
  doc: "When using --sleuth-format delete 'chr' in sequence id. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --del-chr
- id: in_no_rev_comp
  doc: "Don't reverse complement sequence corresponding to gene on minus strand. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no-rev-comp
- id: in_explicit
  doc: 'Write explicitly the name of the keys in the header. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --explicit
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
  doc: 'Output FASTA file. (default: <stdout>)'
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
- get_tx_seq
