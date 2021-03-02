class: CommandLineTool
id: Aquila_step1_multilibs.cwl
inputs:
- id: in_bam_file_list
  doc: "Required parameter, BAM file list, each BAM file is\nseperately by comma \"\
    ,\". For example: 1.bam,2.bam"
  type: File?
  inputBinding:
    prefix: --bam_file_list
- id: in_vcf_file_list
  doc: "Required parameter, VCF file list, each VCF file is\nseperately by comma \"\
    ,\" . For example: 1.vcf,2.vcf"
  type: File?
  inputBinding:
    prefix: --vcf_file_list
- id: in_chr_start
  doc: chromosome start from, default = 1
  type: long?
  inputBinding:
    prefix: --chr_start
- id: in_chr_end
  doc: chromosome end by, default = 23
  type: long?
  inputBinding:
    prefix: --chr_end
- id: in_sample_name_list
  doc: "Required parameter, sample name list, each sample name\nis seperately by comma\
    \ \",\". For example:\nS24385_lysis_2,S24385_lysis_2H"
  type: long?
  inputBinding:
    prefix: --sample_name_list
- id: in_out_dir
  doc: "Directory to store Aquila assembly results, default =\n./Assembly_results"
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_uniq_map_dir
  doc: "Required parameter, Directory for 100-mer uniqness,\nyou can run ./install.sh\
    \ to download \"Uniqness_map\"\nfor GRCh38"
  type: Directory?
  inputBinding:
    prefix: --uniq_map_dir
- id: in_num_threads
  doc: number of threads, default = 8 (recommended)
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_num_threads_for_sam_tools_sort
  doc: number of threads for samtools sort, default = 20
  type: long?
  inputBinding:
    prefix: --num_threads_for_samtools_sort
- id: in_block_threshold
  doc: phase block threshold, default = 200000(200kb)
  type: long?
  inputBinding:
    prefix: --block_threshold
- id: in_block_len_use
  doc: "phase block len threshold, default = 100000(100kb)\n"
  type: long?
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
hints: []
cwlVersion: v1.1
baseCommand:
- Aquila_step1_multilibs
