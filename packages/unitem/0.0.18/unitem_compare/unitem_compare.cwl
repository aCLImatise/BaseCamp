class: CommandLineTool
id: unitem_compare.cwl
inputs:
- id: in_extension_one
  doc: 'extension of bins in directory 1 (default: fna)'
  type: long?
  inputBinding:
    prefix: --extension1
- id: in_extension_two
  doc: 'extension of bins in directory 2 (default: fna)'
  type: long?
  inputBinding:
    prefix: --extension2
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_assembly_file
  doc: assembled contigs used to generate bins
  type: string
  inputBinding:
    position: 0
- id: in_bin_dir_one
  doc: directory containing bins from first method
  type: long
  inputBinding:
    position: 1
- id: in_bin_dir_two
  doc: directory containing bins from second method
  type: long
  inputBinding:
    position: 2
- id: in_output_file
  doc: output file showing overlap between bins
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unitem:0.0.18--py_0
cwlVersion: v1.1
baseCommand:
- unitem
- compare
