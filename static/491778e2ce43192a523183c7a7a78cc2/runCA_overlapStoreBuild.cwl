class: CommandLineTool
id: runCA_overlapStoreBuild.cwl
inputs:
- id: d
  doc: path to location where store should be created
  type: string
  inputBinding:
    prefix: -d
- id: p
  doc: prefix of store
  type: string
  inputBinding:
    prefix: -p
- id: t
  doc: 'type of store: obt dup mer ovl'
  type: string
  inputBinding:
    prefix: -t
- id: g
  doc: path to gkpStore
  type: string
  inputBinding:
    prefix: -g
- id: i
  doc: path to input files
  type: string
  inputBinding:
    prefix: -i
- id: jobs
  doc: create 'j' sorting jobs
  type: string
  inputBinding:
    prefix: -jobs
- id: memory
  doc: request 'm' gigabytes memory from SGE for sorting
  type: string
  inputBinding:
    prefix: -memory
- id: delete_early
  doc: delete intermediate files as soon as possible (unsafe)
  type: boolean
  inputBinding:
    prefix: -deleteearly
- id: no_delete
  doc: do not delete intermediate files
  type: boolean
  inputBinding:
    prefix: -nodelete
- id: max_error
  doc: discard overlaps with more than 'e' fraction error (no filtering by default)
  type: string
  inputBinding:
    prefix: -maxerror
- id: submit
  doc: automatically submit to SGE
  type: boolean
  inputBinding:
    prefix: -submit
- id: d
  doc: /work/assembly/godzilla-v1 \
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: /work/assembly/godzilla-v1/godzilla.gkpStore \
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: /scratch/godzillaovl/ \
  type: boolean
  inputBinding:
    prefix: -i
- id: jobs
  doc: '100'
  type: boolean
  inputBinding:
    prefix: -jobs
outputs: []
cwlVersion: v1.1
baseCommand:
- runCA-overlapStoreBuild
