class: CommandLineTool
id: Aquila_phasing_all_variants.cwl
inputs:
- id: in_assembly_vcf
  doc: "Required parameter, Aquila assembly based VCF file,\n\"Aquila_final_sorted.vcf\"\
    , called by\n\"Aquila_assembly_based_variants_call.py\""
  type: File
  inputBinding:
    prefix: --assembly_vcf
- id: in_vcf_file
  doc: Required parameter, VCF file called by FreeBayes
  type: File
  inputBinding:
    prefix: --vcf_file
- id: in_sample_name
  doc: "sample name, you can define your own,for example: L1,\ndefault = sample_name"
  type: long
  inputBinding:
    prefix: --sample_name
- id: in_chr_start
  doc: chromosome start from, default = 1
  type: long
  inputBinding:
    prefix: --chr_start
- id: in_chr_end
  doc: chromosome end by, default = 23
  type: long
  inputBinding:
    prefix: --chr_end
- id: in_out_dir
  doc: "Directory to store output, default =\n./Aquila_Phasing_Results"
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_assembly_dir
  doc: "Required parameter, folder to store Aquila assembly\nresults at Aquila assembly\
    \ steps"
  type: Directory
  inputBinding:
    prefix: --assembly_dir
- id: in_block_len_use
  doc: "phase block len threshold, default = 100000 (100kb),\nif you change it, make\
    \ sure it's consistent with what\nyou define at Aquila assembly steps\n"
  type: long
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
  doc: "Directory to store output, default =\n./Aquila_Phasing_Results"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- Aquila_phasing_all_variants
