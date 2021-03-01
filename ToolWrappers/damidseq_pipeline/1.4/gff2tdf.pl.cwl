class: CommandLineTool
id: gff2tdf.pl.cwl
inputs:
- id: in_format
  doc: "input format to use (gff or bedgraph)\n[Current value: gff]"
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_genome
  doc: "IGVTools genome file to use\n[Current value: dmel_r5.33]"
  type: boolean?
  inputBinding:
    prefix: --genome
- id: in_igv_path
  doc: "path to IGVtools\n(leave blank if igvtools and igvtools.jar are in your path)\n"
  type: boolean?
  inputBinding:
    prefix: --igvpath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gff2tdf.pl
