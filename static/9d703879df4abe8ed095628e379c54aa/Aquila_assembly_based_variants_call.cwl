class: CommandLineTool
id: Aquila_assembly_based_variants_call.cwl
inputs:
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
- id: var_size
  doc: variant size, cut off size for indel and SV, default = 1
  type: string
  inputBinding:
    prefix: --var_size
- id: all_regions_flag
  doc: 1 is for variants calling in all regions (including some regions with haploid
    assemblies), default = 0 for diploid regions
  type: string
  inputBinding:
    prefix: --all_regions_flag
- id: clean_flag
  doc: '1 for cleaning all intermediate files, default = 0: keep all intermediate
    files'
  type: string
  inputBinding:
    prefix: --clean_flag
- id: num_of_threads
  doc: number of threads, default = 1
  type: string
  inputBinding:
    prefix: --num_of_threads
- id: assembly_dir
  doc: Required parameter, folder to store Aquila assembly results at Aquila assembly
    steps
  type: string
  inputBinding:
    prefix: --assembly_dir
- id: out_dir
  doc: Directory to store outputs, default = ./Aquila_Variant_Results
  type: string
  inputBinding:
    prefix: --out_dir
- id: ref_file
  doc: Required parameter, reference fasta file, run ./install.sh to dowload GRCh38
    human reference fasta
  type: string
  inputBinding:
    prefix: --ref_file
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_assembly_based_variants_call
