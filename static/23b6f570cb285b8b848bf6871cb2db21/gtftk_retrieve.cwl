class: CommandLineTool
id: gtftk_retrieve.cwl
inputs:
- id: in_species_name
  doc: 'The species name. (default: homo_sapiens)'
  type: boolean?
  inputBinding:
    prefix: --species-name
- id: in_output_file
  doc: 'Output file (gtf.gz). (default: None)'
  type: File?
  inputBinding:
    prefix: --outputfile
- id: in_ensembl_collection
  doc: "Which ensembl collection to interrogate('vertebrate', 'protists', 'fungi',\
    \ 'plants', 'metazoa'). (default: vertebrate)"
  type: boolean?
  inputBinding:
    prefix: --ensembl-collection
- id: in_release
  doc: 'Release number. By default, the latest. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --release
- id: in_list_only
  doc: 'If selected, list available species. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list-only
- id: in_hide_species_name
  doc: 'If selected, hide species names upon listing. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --hide-species-name
- id: in_to_stdout
  doc: 'This option specifies that output will go to the standard output stream, leaving
    downloaded files intact (or not, see -d). (default: False)'
  type: boolean?
  inputBinding:
    prefix: --to-stdout
- id: in_delete
  doc: 'Delete the gtf file after processing (e.g if -c is used). (default: False)'
  type: boolean?
  inputBinding:
    prefix: --delete
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
  doc: 'Output file (gtf.gz). (default: None)'
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
- retrieve
