class: CommandLineTool
id: EBFilter.cwl
inputs:
- id: f
  doc: the format of mutation file vcf or annovar (tsv) format
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: the number of threads
  type: string
  inputBinding:
    prefix: -t
- id: q
  doc: threshold for mapping quality for calculating base counts
  type: string
  inputBinding:
    prefix: -q
- id: q
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
outputs: []
cwlVersion: v1.1
baseCommand:
- EBFilter
