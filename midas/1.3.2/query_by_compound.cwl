#!/usr/bin/env cwl-runner

baseCommand:
- query_by_compound.py
class: CommandLineTool
cwlVersion: v1.0
id: query_by_compound.py
inputs:
- doc: Input to sample directories output by run_midas.py Can be a list of directories,
    a directory containing all samples, or a file with paths See '-t' for details
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: 'list: -i is a comma-separated list (ex: /path/to/samples/sample_1,/path/to/samples/sample_2)
    dir: -i is a directory containing all samples (ex: /path/to/samples) file: -i
    is a file containing paths to sample directories (ex: /path/to/sample_paths.txt)'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: Path to output file (/dev/stdout)
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Path to MIDAS reference database By default, the MIDAS_DB environmental variable
    is used
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: KEGG Compound identifier
  id: c
  inputBinding:
    prefix: -c
  type: string
