class: CommandLineTool
id: svtyper.cwl
inputs:
- id: in_input_vcf
  doc: 'VCF input (default: stdin)'
  type: File?
  inputBinding:
    prefix: --input_vcf
- id: in_output_vcf
  doc: 'output VCF to write (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output_vcf
- id: in_bam
  doc: BAM or CRAM file(s), comma-separated if genotyping multiple samples
  type: File?
  inputBinding:
    prefix: --bam
- id: in_ref_fast_a
  doc: Indexed reference FASTA file (recommended for reading CRAM files)
  type: File?
  inputBinding:
    prefix: --ref_fasta
- id: in_lib_info
  doc: create/read JSON file of library information
  type: File?
  inputBinding:
    prefix: --lib_info
- id: in_min_aligned
  doc: minimum number of aligned bases to consider read as evidence [20]
  type: long?
  inputBinding:
    prefix: --min_aligned
- id: in_number_reads_sample
  doc: number of reads to sample from BAM file for building insert size distribution
    [1000000]
  type: long?
  inputBinding:
    prefix: -n
- id: in_sum_quals
  doc: 'add genotyping quality to existing QUAL (default: overwrite QUAL field)'
  type: boolean?
  inputBinding:
    prefix: --sum_quals
- id: in_max_reads
  doc: 'maximum number of reads to assess at any variant (reduces processing time
    in high-depth regions, default: unlimited)'
  type: long?
  inputBinding:
    prefix: --max_reads
- id: in_max_ci_dist
  doc: 'maximum size of a confidence interval before 95% CI is used intead (default:
    1e10)'
  type: long?
  inputBinding:
    prefix: --max_ci_dist
- id: in_split_weight
  doc: weight for split reads [1]
  type: double?
  inputBinding:
    prefix: --split_weight
- id: in_disc_weight
  doc: weight for discordant paired-end reads [1]
  type: double?
  inputBinding:
    prefix: --disc_weight
- id: in_write_alignment
  doc: write relevant reads to BAM file
  type: File?
  inputBinding:
    prefix: --write_alignment
- id: in_verbose
  doc: Report status updates
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtyper
