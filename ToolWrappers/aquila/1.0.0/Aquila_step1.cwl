class: CommandLineTool
id: Aquila_step1.cwl
inputs:
- id: in_bam_file
  doc: "Required parameter; BAM file, called by longranger\nalign"
  type: File?
  inputBinding:
    prefix: --bam_file
- id: in_vcf_file
  doc: Required parameter; VCF file, called by FreeBayes
  type: File?
  inputBinding:
    prefix: --vcf_file
- id: in_chr_start
  doc: chromosome start from, default = 1
  type: long?
  inputBinding:
    prefix: --chr_start
- id: in_chr_end
  doc: chromosome end by,default = 23
  type: long?
  inputBinding:
    prefix: --chr_end
- id: in_sample_name
  doc: "Required parameter; Sample Name you can define by\nyourself, for example:\
    \ S12878"
  type: long?
  inputBinding:
    prefix: --sample_name
- id: in_out_dir
  doc: "Directory to store assembly results, default =\n./Assembly_results"
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_uniq_map_dir
  doc: "Required Parameter; Directory for 100-mer uniqness,\nrun ./install to download\
    \ \"Uniquess_map\" for hg38"
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
- id: in_num_threads_for_extract_reads
  doc: "number of threads for extracting raw reads, default =\n8 (recommended)"
  type: long?
  inputBinding:
    prefix: --num_threads_for_extract_reads
- id: in_block_threshold
  doc: phase block threshold, default = 200000
  type: long?
  inputBinding:
    prefix: --block_threshold
- id: in_block_len_use
  doc: phase block len threshold, default = 100000
  type: long?
  inputBinding:
    prefix: --block_len_use
- id: in_mbq_threshold
  doc: "phred-scaled quality score for the assertion made in\nALT, default = 13"
  type: long?
  inputBinding:
    prefix: --mbq_threshold
- id: in_boundary
  doc: "boundary for long fragments with the same barcode,\ndefault = 50000 (recommended)\n"
  type: long?
  inputBinding:
    prefix: --boundary
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
- Aquila_step1
