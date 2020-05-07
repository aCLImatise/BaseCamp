class: CommandLineTool
id: exec_annotation.cwl
inputs:
- id: create_alignment
  doc: Create domain annotation files for each sequence They will be located in the
    tmp directory Incompatible with -r
  type: boolean
  inputBinding:
    prefix: --create-alignment
- id: re_annotate
  doc: Skip hmmsearch Incompatible with --create-alignment
  type: boolean
  inputBinding:
    prefix: --reannotate
- id: keep_tabular
  doc: Neither create tabular.txt nor delete K number files By default, all K number
    files will be combined into a tabular.txt and delete them
  type: boolean
  inputBinding:
    prefix: --keep-tabular
- id: keep_output
  doc: Neither create output.txt nor delete K number files By default, all K number
    files will be combined into a output.txt and delete them Must be with --create-alignment
  type: boolean
  inputBinding:
    prefix: --keep-output
outputs: []
cwlVersion: v1.1
baseCommand:
- exec_annotation
