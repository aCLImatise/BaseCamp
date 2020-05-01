#!/usr/bin/env cwl-runner

baseCommand:
- exec_annotation
class: CommandLineTool
cwlVersion: v1.0
id: exec_annotation
inputs:
- doc: Create domain annotation files for each sequence They will be located in the
    tmp directory Incompatible with -r
  id: create_alignment
  inputBinding:
    prefix: --create-alignment
  type: boolean
- doc: Skip hmmsearch Incompatible with --create-alignment
  id: re_annotate
  inputBinding:
    prefix: --reannotate
  type: boolean
- doc: Neither create tabular.txt nor delete K number files By default, all K number
    files will be combined into a tabular.txt and delete them
  id: keep_tabular
  inputBinding:
    prefix: --keep-tabular
  type: boolean
- doc: Neither create output.txt nor delete K number files By default, all K number
    files will be combined into a output.txt and delete them Must be with --create-alignment
  id: keep_output
  inputBinding:
    prefix: --keep-output
  type: boolean
