class: CommandLineTool
id: Aquila_phasing_all_variants.cwl
inputs:
- id: assembly_vcf
  doc: Required parameter, Aquila assembly based VCF file, "Aquila_final_sorted.vcf",
    called by "Aquila_assembly_based_variants_call.py"
  type: string
  inputBinding:
    prefix: --assembly_vcf
- id: vcf_file
  doc: Required parameter, VCF file called by FreeBayes
  type: string
  inputBinding:
    prefix: --vcf_file
- id: sample_name
  doc: 'sample name, you can define your own,for example: L1, default = sample_name'
  type: string
  inputBinding:
    prefix: --sample_name
- id: chr_start
  doc: chromosome start from, default = 1
  type: string
  inputBinding:
    prefix: --chr_start
- id: chr_end
  doc: chromosome end by, default = 23
  type: string
  inputBinding:
    prefix: --chr_end
- id: out_dir
  doc: Directory to store output, default = ./Aquila_Phasing_Results
  type: string
  inputBinding:
    prefix: --out_dir
- id: assembly_dir
  doc: Required parameter, folder to store Aquila assembly results at Aquila assembly
    steps
  type: string
  inputBinding:
    prefix: --assembly_dir
- id: block_len_use
  doc: phase block len threshold, default = 100000 (100kb), if you change it, make
    sure it's consistent with what you define at Aquila assembly steps
  type: string
  inputBinding:
    prefix: --block_len_use
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_phasing_all_variants
