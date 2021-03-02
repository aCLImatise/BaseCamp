class: CommandLineTool
id: MetaCHIP_filter_HGT.cwl
inputs:
- id: in_txt_file_containing
  doc: "txt file containing detected HGTs, e.g.\n[prefix]_[ranks]_detected_HGTs.txt"
  type: File?
  inputBinding:
    prefix: -i
- id: in_hgts_detected_levels
  doc: HGTs detected at least n levels, 2 <= n <= 5
  type: long?
  inputBinding:
    prefix: -n
- id: in_plot
  doc: flanking plots folder
  type: Directory?
  inputBinding:
    prefix: -plot
- id: in_ffn
  doc: get nucleotide sequences for qualified HGTs
  type: string?
  inputBinding:
    prefix: -ffn
- id: in_faa
  doc: get amino acid sequences for qualified HGTs
  type: string?
  inputBinding:
    prefix: -faa
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- MetaCHIP
- filter_HGT
