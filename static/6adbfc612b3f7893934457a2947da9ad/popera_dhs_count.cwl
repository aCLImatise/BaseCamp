class: CommandLineTool
id: popera_dhs_count.cwl
inputs:
- id: in_data
  doc: "data file, should be sorted bam format,\nexample=DH_sample1.bam,DH_sample2.bam"
  type: File?
  inputBinding:
    prefix: --data
- id: in_name
  doc: NH sample name default=DH_sample1,DH_sample2
  type: long?
  inputBinding:
    prefix: --name
- id: in_bed
  doc: bed file, example=DH_sample1.bed,DH_sample2.bed
  type: File?
  inputBinding:
    prefix: --bed
- id: in_minlength
  doc: minimum length of merged hot spots, default=5
  type: long?
  inputBinding:
    prefix: --minlength
- id: in_threads
  doc: threads number or cpu number, default=4
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- popera_dhs_count
