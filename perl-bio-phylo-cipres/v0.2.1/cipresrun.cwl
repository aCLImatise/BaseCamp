class: CommandLineTool
id: cipresrun.cwl
inputs:
- id: ci_pres_run
  doc: -t <tool> \ -p <paramname=paramvalue> [-p <paramname=paramvalue>] \      -i
    <infile> \ -y <config.yml> \ -o <out.name=/out/path> [-o <out.name=/out/path>]
    \ -w <workdirectory> \ [-v] [-h] [--manpage]
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cipresrun
