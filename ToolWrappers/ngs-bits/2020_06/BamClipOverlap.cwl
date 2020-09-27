class: CommandLineTool
id: BamClipOverlap.cwl
inputs:
- id: in_in
  doc: Input bam file. Needs to be sorted by name.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output bam file.
  type: File
  inputBinding:
    prefix: -out
- id: in_overlap_mismatch_mapq
  doc: "Set mapping quality of pair to 0 if mismatch is found in overlapping reads.\n\
    Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_mapq
- id: in_overlap_mismatch_remove
  doc: "Remove pair if mismatch is found in overlapping reads.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_remove
- id: in_overlap_mismatch_base_q
  doc: "Reduce base quality if mismatch is found in overlapping reads.\nDefault value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_baseq
- id: in_overlap_mismatch_base_n
  doc: "Set base to N if mismatch is found in overlapping reads.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -overlap_mismatch_basen
- id: in_ignore_indels
  doc: "Turn off indel detection in overlap.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -ignore_indels
- id: in_verbose_modedefault_value
  doc: "Verbose mode.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output bam file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- BamClipOverlap
