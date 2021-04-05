class: CommandLineTool
id: merge_junction_bed12.py.cwl
inputs:
- id: in_delim
  doc: 'Delimiter for merged names. Default: ;'
  type: string?
  inputBinding:
    prefix: --delim
- id: in_threads
  doc: "Number of threads to use for multiprocessing. Default:\n1"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_top_hat
  doc: "Flag. If set, tophat-like junction style is assumed.\nThis means that junctions\
    \ are defined using the\nblockSizes rather than thickStart/End. The script will\n\
    convert the lines to this latter format. By default,\nthe script assumes that\
    \ the intron start/end are\ndefined using thickStart/End like in portcullis.\n\
    Mixed-type input files are not supported."
  type: boolean?
  inputBinding:
    prefix: --tophat
- id: in_output
  doc: "Output file. Default: stdout\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_bed
  doc: Input BED files. Use "-" for stdin.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. Default: stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0
cwlVersion: v1.1
baseCommand:
- merge_junction_bed12.py
