class: CommandLineTool
id: cnvkit.py_antitarget.cwl
inputs:
- id: in_access
  doc: "Regions of accessible sequence on chromosomes (.bed),\nas output by genome2access.py."
  type: File?
  inputBinding:
    prefix: --access
- id: in_avg_size
  doc: "Average size of antitarget bins (results are\napproximate). [Default: 150000]"
  type: long?
  inputBinding:
    prefix: --avg-size
- id: in_min_size
  doc: "Minimum size of antitarget bins (smaller regions are\ndropped). [Default:\
    \ 1/16 avg size, calculated]"
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_output
  doc: "Output file name.\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cnvkit:0.9.8--py_0
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- antitarget
