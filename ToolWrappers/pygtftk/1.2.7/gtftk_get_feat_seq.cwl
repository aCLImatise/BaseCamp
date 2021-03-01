class: CommandLineTool
id: gtftk_get_feat_seq.cwl
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
  doc: 'The genome in fasta format. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_separator
  doc: 'To separate info in header. (default: |)'
  type: boolean?
  inputBinding:
    prefix: --separator
- id: in_label
  doc: 'A set of key for the header that will be extracted from the transcript line.
    (default: feature,transcript_id,gene_id,seqid,start,end)'
  type: boolean?
  inputBinding:
    prefix: --label
- id: in_feature_type
  doc: 'The feature type (one defined in column 3). (default: exon)'
  type: boolean?
  inputBinding:
    prefix: --feature-type
- id: in_no_rev_comp
  doc: "Don't reverse complement sequence corresponding to gene on minus strand. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no-rev-comp
- id: in_rev_comp_to_header
  doc: 'Indicate in the header whether sequence was rev-complemented. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --rev-comp-to-header
- id: in_unique
  doc: "Don't write redondant IDS. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --unique
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1
cwlVersion: v1.1
baseCommand:
- gtftk
- get_feat_seq
