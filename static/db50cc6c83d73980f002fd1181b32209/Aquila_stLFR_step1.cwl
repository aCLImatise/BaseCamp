class: CommandLineTool
id: Aquila_stLFR_step1.cwl
inputs:
- id: in_fast_q_file
  doc: Required parameter; stLFR FASTQ file with paired reads
  type: File?
  inputBinding:
    prefix: --fastq_file
- id: in_bam_file
  doc: Required parameter; BAM file, called by bwa mem
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
  doc: "Required parameter; sample name you can define, for\nexample, S12878"
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
    \ it"
  type: Directory?
  inputBinding:
    prefix: --uniq_map_dir
- id: in_num_threads
  doc: number of threads, default = 8 (recommended)
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_block_threshold
  doc: phase block threshold, default = 200000
  type: long?
  inputBinding:
    prefix: --block_threshold
- id: in_block_len_use
  doc: "phase block len threshold, default = 100000\n"
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
- Aquila_stLFR_step1
