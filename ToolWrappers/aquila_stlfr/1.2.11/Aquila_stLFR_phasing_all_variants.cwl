class: CommandLineTool
id: Aquila_stLFR_phasing_all_variants.cwl
inputs:
- id: in_assembly_vcf
  doc: vcf file
  type: File?
  inputBinding:
    prefix: --assembly_vcf
- id: in_vcf_file
  doc: vcf file
  type: File?
  inputBinding:
    prefix: --vcf_file
- id: in_chr_start
  doc: chromosome start from
  type: string?
  inputBinding:
    prefix: --chr_start
- id: in_chr_end
  doc: chromosome end by
  type: string?
  inputBinding:
    prefix: --chr_end
- id: in_out_dir
  doc: Directory to store output
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_assembly_dir
  doc: folder to store assembled results
  type: Directory?
  inputBinding:
    prefix: --assembly_dir
- id: in_block_len_use
  doc: "phase block len threshold\n"
  type: string?
  inputBinding:
    prefix: --block_len_use
- id: in_x_zhou_one_five_atcs_dot_stanford_dot_edu
  doc: 'optional arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Directory to store output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_phasing_all_variants
