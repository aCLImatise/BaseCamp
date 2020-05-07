class: CommandLineTool
id: HYPHYMPI_sw.cwl
inputs:
- id: to
  doc: firstTime=0;
  type: string
  inputBinding:
    position: 0
- id: else
  doc: fprintf(stdout, "Finshed Segment ", Format(segmentStart,0,0), " - ", Format(segmentEnd,0,0),
    "\n");
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
- sw
