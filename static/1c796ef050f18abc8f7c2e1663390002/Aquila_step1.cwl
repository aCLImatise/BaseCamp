class: CommandLineTool
id: Aquila_step1.cwl
inputs:
- id: bam_file
  doc: Required parameter; BAM file, called by longranger align
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
  doc: 'Required parameter; Sample Name you can define by yourself, for example: S12878'
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
    "Uniquess_map" for hg38
  type: string
  inputBinding:
    prefix: --uniq_map_dir
- id: num_threads
  doc: number of threads, default = 8 (recommended)
  type: string
  inputBinding:
    prefix: --num_threads
- id: num_threads_for_sam_tools_sort
  doc: number of threads for samtools sort, default = 20
  type: string
  inputBinding:
    prefix: --num_threads_for_samtools_sort
- id: num_threads_for_extract_reads
  doc: number of threads for extracting raw reads, default = 8 (recommended)
  type: string
  inputBinding:
    prefix: --num_threads_for_extract_reads
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
- id: mbq_threshold
  doc: phred-scaled quality score for the assertion made in ALT, default = 13
  type: string
  inputBinding:
    prefix: --mbq_threshold
- id: boundary
  doc: boundary for long fragments with the same barcode, default = 50000 (recommended)
  type: string
  inputBinding:
    prefix: --boundary
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_step1
