class: CommandLineTool
id: Aquila_stLFR_assembly_based_variants_call.cwl
inputs:
- id: in_assembly_dir
  doc: "Required parameter, folder to store Aquila assembly\nresults at Aquila assembly\
    \ steps"
  type: Directory
  inputBinding:
    prefix: --assembly_dir
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
- id: in_var_size
  doc: "variant size, cut off size for indel and SV, default =\n1"
  type: long
  inputBinding:
    prefix: --var_size
- id: in_all_regions_flag
  doc: "1 is for variants calling in all regions (including\nsome regions with haploid\
    \ assemblies), default = 0 for\ndiploid regions"
  type: long
  inputBinding:
    prefix: --all_regions_flag
- id: in_clean_flag
  doc: "1 for cleaning all intermediate files, default = 0:\nkeep all intermediate\
    \ files"
  type: long
  inputBinding:
    prefix: --clean_flag
- id: in_num_of_threads
  doc: number of threads, default = 1
  type: long
  inputBinding:
    prefix: --num_of_threads
- id: in_out_dir
  doc: "Directory to store outputs, default =\n./Aquila_Variant_Results"
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_ref_file
  doc: "Required parameter, reference fasta file, run\n./install.sh to dowload GRCh38\
    \ human reference fasta\n"
  type: File
  inputBinding:
    prefix: --ref_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_assembly_based_variants_call
