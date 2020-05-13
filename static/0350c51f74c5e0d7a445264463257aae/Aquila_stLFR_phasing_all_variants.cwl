class: CommandLineTool
id: Aquila_stLFR_phasing_all_variants.cwl
inputs:
- id: assembly_vcf
  doc: vcf file
  type: string
  inputBinding:
    prefix: --assembly_vcf
- id: vcf_file
  doc: vcf file
  type: string
  inputBinding:
    prefix: --vcf_file
- id: chr_start
  doc: chromosome start from
  type: string
  inputBinding:
    prefix: --chr_start
- id: chr_end
  doc: chromosome end by
  type: string
  inputBinding:
    prefix: --chr_end
- id: out_dir
  doc: Directory to store output
  type: string
  inputBinding:
    prefix: --out_dir
- id: assembly_dir
  doc: folder to store assembled results
  type: string
  inputBinding:
    prefix: --assembly_dir
- id: block_len_use
  doc: phase block len threshold
  type: string
  inputBinding:
    prefix: --block_len_use
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_phasing_all_variants
