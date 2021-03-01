class: CommandLineTool
id: layoutReads.cwl
inputs:
- id: in_seqpath_mandatory_path
  doc: seqPath        Mandatory path to an existing seqStore.
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_ovlpath_mandatory_path
  doc: ovlPath        Mandatory path to an existing ovlStore.
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_readlistpath_mandatory_path
  doc: readListPath   Mandatory path to an existing ovlStore.
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_gs
  doc: Mandatory genome size in bp.
  type: long?
  inputBinding:
    prefix: -gs
- id: in_outprefix_mandatory_prefix
  doc: outPrefix      Mandatory prefix for the output files.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_em
  doc: Max error rate of overlaps to load.
  type: long?
  inputBinding:
    prefix: -eM
- id: in_eg
  doc: Max error rate of overlaps to use for placing contained reads.
  type: long?
  inputBinding:
    prefix: -eg
- id: in_no_contains
  doc: Do not place contained reads.
  type: boolean?
  inputBinding:
    prefix: -nocontains
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- layoutReads
