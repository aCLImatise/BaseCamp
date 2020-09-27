class: CommandLineTool
id: VcfAnnotateFromVcf.cwl
inputs:
- id: in_config_file
  doc: "TSV file containing the annotation file path, the prefix, the INFO ids and\
    \ the id column for multiple annotations.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -config_file
- id: in_annotation_file
  doc: "Tabix indexed VCF.GZ file used for annotation.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -annotation_file
- id: in_info_ids
  doc: "INFO id(s) in annotation VCF file (Multiple ids can be separated by ',', optional\
    \ new id names in output file can be added by '=': original_id=new_id).\nDefault\
    \ value: ''"
  type: File
  inputBinding:
    prefix: -info_ids
- id: in_id_column
  doc: "Name of the ID column in annotation file. (If  it will be ignored in output\
    \ file, alternative output name can be specified by old_id_column_name=new_name\n\
    Default value: ''"
  type: File
  inputBinding:
    prefix: -id_column
- id: in_id_prefix
  doc: "Prefix for INFO id(s) in output VCF file.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -id_prefix
- id: in_allow_missing_header
  doc: "If set the execution is not aborted if a INFO header is missing in annotation\
    \ file\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -allow_missing_header
- id: in_in
  doc: "Input VCF(.GZ) file. If unset, reads from STDIN.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output VCF list. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_threads
  doc: "The number of threads used to read, process and write files.\nDefault value:\
    \ '1'"
  type: long
  inputBinding:
    prefix: -threads
- id: in_block_size
  doc: "Number of lines processed in one chunk.\nDefault value: '5000'"
  type: long
  inputBinding:
    prefix: -block_size
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_info_ids
  doc: "INFO id(s) in annotation VCF file (Multiple ids can be separated by ',', optional\
    \ new id names in output file can be added by '=': original_id=new_id).\nDefault\
    \ value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_info_ids)
- id: out_id_column
  doc: "Name of the ID column in annotation file. (If  it will be ignored in output\
    \ file, alternative output name can be specified by old_id_column_name=new_name\n\
    Default value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_id_column)
- id: out_id_prefix
  doc: "Prefix for INFO id(s) in output VCF file.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_id_prefix)
cwlVersion: v1.1
baseCommand:
- VcfAnnotateFromVcf
