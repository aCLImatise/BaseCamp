class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/EBFilter.cwl
inputs:
- id: format_mutation_file
  doc: the format of mutation file vcf or annovar (tsv) format
  type: string
  inputBinding:
    prefix: -f
- id: the_number_threads
  doc: the number of threads
  type: string
  inputBinding:
    prefix: -t
- id: threshold_mapping_quality
  doc: threshold for mapping quality for calculating base counts
  type: string
  inputBinding:
    prefix: -q
- id: threshold_base_quality
  doc: threshold for base quality for calculating base counts
  type: string
  inputBinding:
    prefix: -Q
- id: ff
  doc: skip reads with mask bits set
  type: string
  inputBinding:
    prefix: --ff
- id: l_option
  doc: use samtools mpileup -l option
  type: boolean
  inputBinding:
    prefix: --loption
- id: region
  doc: restrict the chromosomal region for mutation. active only if loption is on
  type: string
  inputBinding:
    prefix: --region
- id: debug
  doc: keep intermediate files
  type: boolean
  inputBinding:
    prefix: --debug
- id: target_dot_vcf
  doc: the path to the mutation file
  type: string
  inputBinding:
    position: 0
- id: target_dot_bam
  doc: the path to the target bam file
  type: string
  inputBinding:
    position: 1
- id: control_bam_list_dot_txt
  doc: the list of paths to control bam files
  type: string
  inputBinding:
    position: 2
- id: output_dot_vcf
  doc: the path to the output
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- EBFilter
