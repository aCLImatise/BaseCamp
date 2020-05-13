class: CommandLineTool
id: Aquila_step1_hybrid.cwl
inputs:
- id: bam_file_list
  doc: 'Required parameter, BAM file list, each BAM file is seperately by comma ",".
    For example: 1.bam,2.bam'
  type: string
  inputBinding:
    prefix: --bam_file_list
- id: vcf_file_list
  doc: 'Required parameter, VCF file list, each VCF file is seperately by comma ","
    . For example: 1.vcf,2.vcf'
  type: string
  inputBinding:
    prefix: --vcf_file_list
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
- id: sample_name_list
  doc: 'Required parameter, sample name list, each sample name is seperately by comma
    ",". For example: S24385_lysis_2,S24385_lysis_2H'
  type: string
  inputBinding:
    prefix: --sample_name_list
- id: out_dir
  doc: Directory to store output
  type: string
  inputBinding:
    prefix: --out_dir
- id: uniq_map_dir
  doc: Required parameter,Directory to 100-mer uniqness
  type: string
  inputBinding:
    prefix: --uniq_map_dir
- id: num_threads
  doc: number of threads
  type: string
  inputBinding:
    prefix: --num_threads
- id: num_threads_for_sam_tools_sort
  doc: number of threads for samtools sort
  type: string
  inputBinding:
    prefix: --num_threads_for_samtools_sort
- id: block_threshold
  doc: phase block threshold, default = 200000(200kb)
  type: string
  inputBinding:
    prefix: --block_threshold
- id: block_len_use
  doc: phase block len threshold, default = 100000(100kb)
  type: string
  inputBinding:
    prefix: --block_len_use
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_step1_hybrid
