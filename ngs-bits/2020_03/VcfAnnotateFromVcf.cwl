#!/usr/bin/env cwl-runner

baseCommand:
- VcfAnnotateFromVcf
class: CommandLineTool
cwlVersion: v1.0
id: vcfannotatefromvcf
inputs:
- doc: "TSV file containing the annotation file path, the prefix, the INFO ids and\
    \ the id column for multiple annotations. Default value: ''"
  id: config_file
  inputBinding:
    prefix: -config_file
  type: File
- doc: "Tabix indexed VCF.GZ file used for annotation. Default value: ''"
  id: annotation_file
  inputBinding:
    prefix: -annotation_file
  type: File
- doc: "INFO id(s) in annotation VCF file (Multiple ids can be separated by ',', optional\
    \ new id names in output file can be added by '=': original_id=new_id). Default\
    \ value: ''"
  id: info_ids
  inputBinding:
    prefix: -info_ids
  type: string
- doc: "Name of the ID column in annotation file. (If  it will be ignored in output\
    \ file, alternative output name can be specified by old_id_column_name=new_name\
    \ Default value: ''"
  id: id_column
  inputBinding:
    prefix: -id_column
  type: string
- doc: "Prefix for INFO id(s) in output VCF file. Default value: ''"
  id: id_prefix
  inputBinding:
    prefix: -id_prefix
  type: string
- doc: "If set the execution is not aborted if a INFO header is missing in annotation\
    \ file Default value: 'false'"
  id: allow_missing_header
  inputBinding:
    prefix: -allow_missing_header
  type: boolean
- doc: "Input VCF(.GZ) file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
