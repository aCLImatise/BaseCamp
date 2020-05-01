#!/usr/bin/env cwl-runner

baseCommand:
- lumpy
class: CommandLineTool
cwlVersion: v1.0
id: lumpy
inputs:
- doc: Genome file (defines chromosome order)
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: Show evidence for each call
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: File read windows size (default 1000000)
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: minimum weight for a call
  id: mw
  inputBinding:
    prefix: -mw
  type: boolean
- doc: minimum per-sample weight for a call
  id: msw
  inputBinding:
    prefix: -msw
  type: boolean
- doc: trim threshold
  id: tt
  inputBinding:
    prefix: -tt
  type: boolean
- doc: exclude file bed file
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: temp file prefix, must be to a writeable directory
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: output probability curve for each variant
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: output BEDPE instead of VCF
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: bam_file:<file name>, id:<sample name>, back_distance:<distance>, min_mapping_threshold:<mapping
    quality>, weight:<sample weight>, min_clip:<minimum clip length>, read_group:<string>
  id: sr
  inputBinding:
    prefix: -sr
  type: boolean
- doc: bam_file:<file name>, id:<sample name>, histo_file:<file name>, mean:<value>,
    stdev:<value>, read_length:<length>, min_non_overlap:<length>, discordant_z:<z
    value>, back_distance:<distance>, min_mapping_threshold:<mapping quality>, weight:<sample
    weight>, read_group:<string>
  id: pe
  inputBinding:
    prefix: -pe
  type: boolean
- doc: bedpe_file:<bedpe file>, id:<sample name>, weight:<sample weight>
  id: bed_pe
  inputBinding:
    prefix: -bedpe
  type: boolean
