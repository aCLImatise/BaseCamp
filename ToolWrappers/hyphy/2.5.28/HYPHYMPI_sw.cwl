class: CommandLineTool
id: HYPHYMPI_sw.cwl
inputs:
- id: in_else
  doc: fprintf(stdout, "Finshed Segment ", Format(segmentStart,0,0), " - ", Format(segmentEnd,0,0),
    "\n");
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hyphy:2.5.28--h3db2f75_0
cwlVersion: v1.1
baseCommand:
- HYPHYMPI
- sw
