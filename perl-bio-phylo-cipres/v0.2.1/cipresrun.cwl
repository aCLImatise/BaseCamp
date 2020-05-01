#!/usr/bin/env cwl-runner

baseCommand:
- cipresrun
class: CommandLineTool
cwlVersion: v1.0
id: cipresrun
inputs:
- doc: -t <tool> \ -p <paramname=paramvalue> [-p <paramname=paramvalue>] \      -i
    <infile> \ -y <config.yml> \ -o <out.name=/out/path> [-o <out.name=/out/path>]
    \ -w <workdirectory> \ [-v] [-h] [--manpage]
  id: ci_pres_run
  inputBinding:
    position: 0
  type: string
