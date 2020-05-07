class: CommandLineTool
id: VcfAnnotateFromVcf.cwl
inputs:
- id: config_file
  doc: "TSV file containing the annotation file path, the prefix, the INFO ids and\
    \ the id column for multiple annotations. Default value: ''"
  type: File
  inputBinding:
    prefix: -config_file
- id: annotation_file
  doc: "Tabix indexed VCF.GZ file used for annotation. Default value: ''"
  type: File
  inputBinding:
    prefix: -annotation_file
- id: info_ids
  doc: "INFO id(s) in annotation VCF file (Multiple ids can be separated by ',', optional\
    \ new id names in output file can be added by '=': original_id=new_id). Default\
    \ value: ''"
  type: string
  inputBinding:
    prefix: -info_ids
- id: id_column
  doc: "Name of the ID column in annotation file. (If  it will be ignored in output\
    \ file, alternative output name can be specified by old_id_column_name=new_name\
    \ Default value: ''"
  type: string
  inputBinding:
    prefix: -id_column
- id: id_prefix
  doc: "Prefix for INFO id(s) in output VCF file. Default value: ''"
  type: string
  inputBinding:
    prefix: -id_prefix
- id: allow_missing_header
  doc: "If set the execution is not aborted if a INFO header is missing in annotation\
    \ file Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -allow_missing_header
- id: in
  doc: "Input VCF(.GZ) file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- VcfAnnotateFromVcf
