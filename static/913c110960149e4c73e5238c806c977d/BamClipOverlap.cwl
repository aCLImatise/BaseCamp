class: CommandLineTool
id: BamClipOverlap.cwl
inputs:
- id: in
  doc: Input bam file. Needs to be sorted by name.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output bam file.
  type: File
  inputBinding:
    prefix: -out
- id: overlap_mismatch_mapq
  doc: "Set mapping quality of pair to 0 if mismatch is found in overlapping reads.\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_mapq
- id: overlap_mismatch_remove
  doc: "Remove pair if mismatch is found in overlapping reads. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_remove
- id: overlap_mismatch_base_q
  doc: "Reduce base quality if mismatch is found in overlapping reads. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_baseq
- id: overlap_mismatch_base_n
  doc: "Set base to N if mismatch is found in overlapping reads. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_basen
- id: ignore_indels
  doc: "Turn off indel detection in overlap. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -ignore_indels
- id: v
  doc: "Verbose mode. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -v
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
- BamClipOverlap
