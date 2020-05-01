#!/usr/bin/env cwl-runner

baseCommand:
- twopaco
class: CommandLineTool
cwlVersion: v1.0
id: twopaco
inputs:
- doc: '[-o <file name>] [--test] [--tmpdir <directory name>] [-t <integer>] [-r <integer>]
    [-q <integer>] -f <integer> [-k <oddc>] [--] [--version] [-h] <fasta files with
    genomes> ...'
  id: two_paco
  inputBinding:
    position: 0
  type: string
