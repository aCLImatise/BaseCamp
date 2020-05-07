class: CommandLineTool
id: qualimap.cwl
inputs:
- id: java_mem_size
  doc: 'Use this argument to set Java memory heap size. Example: qualimap bamqc -bam
    very_large_alignment.bam --java-mem-size=4G'
  type: boolean
  inputBinding:
    prefix: --java-mem-size
outputs: []
cwlVersion: v1.1
baseCommand:
- qualimap
