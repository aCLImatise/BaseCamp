class: CommandLineTool
id: gtftk_closest_genes.cwl
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
- id: in_from_region_type
  doc: 'What is region to consider for each gene. (default: tss)'
  type: boolean?
  inputBinding:
    prefix: --from-region-type
- id: in_nb_neighbors
  doc: 'The size of the neighborhood. (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --nb-neighbors
- id: in_to_region_type
  doc: 'What is region to consider for each closest gene. (default: tss)'
  type: boolean?
  inputBinding:
    prefix: --to-region-type
- id: in_same_stranded_ness
  doc: 'Require same strandedness (default: False)'
  type: boolean?
  inputBinding:
    prefix: --same-strandedness
- id: in_diff_stranded_ness
  doc: 'Require different strandedness (default: False)'
  type: boolean?
  inputBinding:
    prefix: --diff-strandedness
- id: in_text_format
  doc: 'Return a text format. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --text-format
- id: in_no_header
  doc: "Don't print the header line. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_collapse
  doc: "Unwrap. Don't use comma. Print closest genes line by line. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --collapse
- id: in_identifier
  doc: 'The key used as gene identifier. (default: gene_id)'
  type: boolean?
  inputBinding:
    prefix: --identifier
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
- closest_genes
