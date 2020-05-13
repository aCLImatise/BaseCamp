class: CommandLineTool
id: age_align.cwl
inputs:
- id: age_align
  doc: '[-version] [-indel|-tdup|-inv|-invl|-invr] [-match=value:1] [-mismatch=value:-2]
    [-go=value:-2] [-ge=value:-1] [-both] [-revcom1] [-revcom2] [-coor1=start-end]
    [-coor2=start-end] file1.fa file2.fa'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- age_align
