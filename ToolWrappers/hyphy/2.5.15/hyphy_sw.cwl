class: CommandLineTool
id: hyphy_sw.cwl
inputs:
- id: in_mpireceive__fromnode
  doc: MPIReceive(-1, fromNode, result_String);
  type: string
  inputBinding:
    position: 0
- id: in_branch_under_condition
  doc: Branch under condition 'firstTime'
  type: string
  inputBinding:
    position: 1
- id: in_firsttime
  doc: firstTime=0;
  type: string
  inputBinding:
    position: 2
- id: in_fprintfstdout
  doc: fprintf(stdout, "Finshed Segment ", Format(segmentStart,0,0), " - ", Format(segmentEnd,0,0),
    "\n");
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hyphy
- sw
