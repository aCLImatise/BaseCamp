#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-process-genbank
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-process-genbank
inputs:
- doc: Input GenBank file
  id: input_genbank
  inputBinding:
    prefix: --input-genbank
  type: string
- doc: 'Annotation source (default: "NCBI_PGAP")'
  id: annotation_source
  inputBinding:
    prefix: --annotation-source
  type: string
- doc: 'Annotation source version to be stored in the database (default: "v4.6")'
  id: annotation_version
  inputBinding:
    prefix: --annotation-version
  type: string
