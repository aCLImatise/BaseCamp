class: CommandLineTool
id: Aquila_stLFR_step1.cwl
inputs:
- id: fast_q_file
  doc: Required parameter; stLFR FASTQ file with paired reads
  type: string
  inputBinding:
    prefix: --fastq_file
- id: bam_file
  doc: Required parameter; BAM file, called by bwa mem
  type: string
  inputBinding:
    prefix: --bam_file
- id: vcf_file
  doc: Required parameter; VCF file, called by FreeBayes
  type: string
  inputBinding:
    prefix: --vcf_file
- id: chr_start
  doc: chromosome start from, default = 1
  type: string
  inputBinding:
    prefix: --chr_start
- id: chr_end
  doc: chromosome end by,default = 23
  type: string
  inputBinding:
    prefix: --chr_end
- id: sample_name
  doc: Required parameter; sample name you can define, for example, S12878
  type: string
  inputBinding:
    prefix: --sample_name
- id: out_dir
  doc: Directory to store assembly results, default = ./Assembly_results
  type: string
  inputBinding:
    prefix: --out_dir
- id: uniq_map_dir
  doc: Required Parameter; Directory for 100-mer uniqness, run ./install to download
    it
  type: string
  inputBinding:
    prefix: --uniq_map_dir
- id: num_threads
  doc: number of threads, default = 8 (recommended)
  type: string
  inputBinding:
    prefix: --num_threads
- id: block_threshold
  doc: phase block threshold, default = 200000
  type: string
  inputBinding:
    prefix: --block_threshold
- id: block_len_use
  doc: phase block len threshold, default = 100000
  type: string
  inputBinding:
    prefix: --block_len_use
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_step1
