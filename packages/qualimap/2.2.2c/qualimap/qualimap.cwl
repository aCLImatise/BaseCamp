class: CommandLineTool
id: ../../../qualimap.cwl
inputs:
- id: in_java_mem_size
  doc: "Use this argument to set Java memory heap size. Example:\nqualimap bamqc -bam\
    \ very_large_alignment.bam --java-mem-size=4G\n"
  type: boolean
  inputBinding:
    prefix: --java-mem-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qualimap
