#!/usr/bin/env cwl-runner

baseCommand:
- graphdump
class: CommandLineTool
cwlVersion: v1.0
id: graphdump
inputs:
- doc: -k <integer> [-s <>] ...  -f <seq|group|dot|gfa1|gfa2|fasta> [--prefix] [--]
    [--version] [-h] <file name>
  id: graph_dump
  inputBinding:
    position: 0
  type: string
