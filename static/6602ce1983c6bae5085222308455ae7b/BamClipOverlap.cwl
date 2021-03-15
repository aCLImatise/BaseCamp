class: CommandLineTool
id: BamClipOverlap.cwl
inputs:
- id: in_in
  doc: Input BAM/CRAM file. Needs to be sorted by name.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output BAM file.
  type: File?
  inputBinding:
    prefix: -out
- id: in_overlap_mismatch_mapq
  doc: "Set mapping quality of pair to 0 if mismatch is found in overlapping reads.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -overlap_mismatch_mapq
- id: in_overlap_mismatch_remove
  doc: "Remove pair if mismatch is found in overlapping reads.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -overlap_mismatch_remove
- id: in_overlap_mismatch_base_q
  doc: "Reduce base quality if mismatch is found in overlapping reads.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -overlap_mismatch_baseq
- id: in_overlap_mismatch_base_n
  doc: "Set base to N if mismatch is found in overlapping reads.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -overlap_mismatch_basen
- id: in_ignore_indels
  doc: "Turn off indel detection in overlap.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -ignore_indels
- id: in_verbose_modedefault_value
  doc: "Verbose mode.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_ref
  doc: "Reference genome for CRAM support (mandatory if CRAM is used).\nDefault value:\
    \ ''"
  type: File?
  inputBinding:
    prefix: -ref
- id: in_write_cram
  doc: "Writes a CRAM file as output.\nDefault value: 'false'"
  type: File?
  inputBinding:
    prefix: -write_cram
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output BAM file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_write_cram
  doc: "Writes a CRAM file as output.\nDefault value: 'false'"
  type: File?
  outputBinding:
    glob: $(inputs.in_write_cram)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- BamClipOverlap
