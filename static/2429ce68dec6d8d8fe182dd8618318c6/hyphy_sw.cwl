class: CommandLineTool
id: hyphy_sw.cwl
inputs:
- id: to
  doc: MPIReceive(-1, fromNode, result_String);
  type: string
  inputBinding:
    position: 0
- id: else
  doc: Branch under condition 'firstTime'
  type: string
  inputBinding:
    position: 1
- id: to
  doc: firstTime=0;
  type: string
  inputBinding:
    position: 2
- id: else
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
