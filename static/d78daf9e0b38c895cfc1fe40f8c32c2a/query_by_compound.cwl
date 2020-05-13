class: CommandLineTool
id: query_by_compound.py.cwl
inputs:
- id: i
  doc: Input to sample directories output by run_midas.py Can be a list of directories,
    a directory containing all samples, or a file with paths See '-t' for details
  type: string
  inputBinding:
    prefix: -i
- id: t
  doc: 'list: -i is a comma-separated list (ex: /path/to/samples/sample_1,/path/to/samples/sample_2)
    dir: -i is a directory containing all samples (ex: /path/to/samples) file: -i
    is a file containing paths to sample directories (ex: /path/to/sample_paths.txt)'
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: Path to output file (/dev/stdout)
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: Path to MIDAS reference database By default, the MIDAS_DB environmental variable
    is used
  type: string
  inputBinding:
    prefix: -d
- id: c
  doc: KEGG Compound identifier
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- query_by_compound.py
