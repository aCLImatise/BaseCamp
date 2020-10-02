class: CommandLineTool
id: EBFilter.cwl
inputs:
- id: in_format_annovar_tsv
  doc: the format of mutation file vcf or annovar (tsv)
  type: string
  inputBinding:
    prefix: -f
- id: in_threshold_mapping_quality
  doc: "threshold for mapping quality for calculating base\ncounts"
  type: string
  inputBinding:
    prefix: -q
- id: in_threshold_base_quality
  doc: threshold for base quality for calculating base counts
  type: string
  inputBinding:
    prefix: -Q
- id: in_ff
  doc: skip reads with mask bits set
  type: string
  inputBinding:
    prefix: --ff
- id: in_l_option
  doc: use samtools mpileup -l option
  type: boolean
  inputBinding:
    prefix: --loption
- id: in_region
  doc: "restrict the chromosomal region for mutation. active\nonly if loption is on"
  type: string
  inputBinding:
    prefix: --region
- id: in_debug
  doc: keep intermediate files
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_t
  doc: ''
  type: long
  inputBinding:
    prefix: -t
- id: in_target_dot_vcf
  doc: the path to the mutation file
  type: string
  inputBinding:
    position: 0
- id: in_target_dot_bam
  doc: the path to the target bam file
  type: string
  inputBinding:
    position: 1
- id: in_control_bam_list_dot_txt
  doc: the list of paths to control bam files
  type: string
  inputBinding:
    position: 2
- id: in_output_dot_vcf
  doc: the path to the output
  type: string
  inputBinding:
    position: 3
- id: in_format
  doc: -t thread_num         the number of threads
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- EBFilter
