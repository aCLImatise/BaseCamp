class: CommandLineTool
id: vsnp_merge_vcf_into_fasta.py.cwl
inputs:
- id: in_fast_a_file
  doc: 'REQUIRED: In file to be processed'
  type: File?
  inputBinding:
    prefix: --fasta_file
- id: in_vcf_file
  doc: 'REQUIRED: In file to be processed'
  type: File?
  inputBinding:
    prefix: --vcf_file
- id: in_qual_threshold
  doc: "OPTIONAL: QUAL values below this value will not be\napplied."
  type: string?
  inputBinding:
    prefix: --qual_threshold
- id: in_map_threshold
  doc: "OPTIONAL: Map Quality values below this value will not\nbe applied."
  type: string?
  inputBinding:
    prefix: --map_threshold
- id: in_ambiguity_not
  doc: "OPTIONAL: when -a used ambiguity will not be applied.\nBy default it will\
    \ be applied."
  type: boolean?
  inputBinding:
    prefix: --ambiguity_NOT
- id: in_r
  doc: ''
  type: File?
  inputBinding:
    prefix: -r
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge_vcf_into_fasta_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vsnp_merge_vcf_into_fasta.py
