#!/usr/bin/env cwl-runner

baseCommand:
- BamClipOverlap
class: CommandLineTool
cwlVersion: v1.0
id: bamclipoverlap
inputs:
- doc: Input bam file. Needs to be sorted by name.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: Output bam file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Set mapping quality of pair to 0 if mismatch is found in overlapping reads.\
    \ Default value: 'false'"
  id: overlap_mismatch_mapq
  inputBinding:
    prefix: -overlap_mismatch_mapq
  type: boolean
- doc: "Remove pair if mismatch is found in overlapping reads. Default value: 'false'"
  id: overlap_mismatch_remove
  inputBinding:
    prefix: -overlap_mismatch_remove
  type: boolean
- doc: "Reduce base quality if mismatch is found in overlapping reads. Default value:\
    \ 'false'"
  id: overlap_mismatch_base_q
  inputBinding:
    prefix: -overlap_mismatch_baseq
  type: boolean
- doc: "Set base to N if mismatch is found in overlapping reads. Default value: 'false'"
  id: overlap_mismatch_base_n
  inputBinding:
    prefix: -overlap_mismatch_basen
  type: boolean
- doc: "Turn off indel detection in overlap. Default value: 'false'"
  id: ignore_indels
  inputBinding:
    prefix: -ignore_indels
  type: boolean
- doc: "Verbose mode. Default value: 'false'"
  id: v
  inputBinding:
    prefix: -v
  type: boolean
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
