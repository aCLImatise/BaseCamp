class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hyphy_sw.cwl
inputs:
- id: mpireceive__fromnode
  doc: MPIReceive(-1, fromNode, result_String);
  type: string
  inputBinding:
    position: 0
- id: branch_under_condition
  doc: Branch under condition 'firstTime'
  type: string
  inputBinding:
    position: 1
- id: firsttime
  doc: firstTime=0;
  type: string
  inputBinding:
    position: 2
- id: fprintfstdout
  doc: fprintf(stdout, "Finshed Segment ", Format(segmentStart,0,0), " - ", Format(segmentEnd,0,0),
    "\n");
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- hyphy
- sw
