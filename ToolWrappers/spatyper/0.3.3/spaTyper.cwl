class: CommandLineTool
id: spaTyper.cwl
inputs:
- id: in_repeat_file
  doc: "List of spa repeats\n(http://spa.ridom.de/dynamic/sparepeats.fasta)"
  type: File?
  inputBinding:
    prefix: --repeat_file
- id: in_repeat_order_file
  doc: "List spa types and order of repeats\n(http://spa.ridom.de/dynamic/spatypes.txt)"
  type: File?
  inputBinding:
    prefix: --repeat_order_file
- id: in_folder
  doc: Folder to save downloaded files from Ridom/Spa server
  type: Directory?
  inputBinding:
    prefix: --folder
- id: in_fast_a
  doc: List of one or more fasta files.
  type: string[]
  inputBinding:
    prefix: --fasta
- id: in_glob
  doc: "Uses unix style pathname expansion to run spa typing\non all files. If your\
    \ shell autoexpands wildcards use\n-f."
  type: string?
  inputBinding:
    prefix: --glob
- id: in_do_enrich
  doc: 'Do PCR product enrichment. [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --do_enrich
- id: in_output
  doc: 'Provide a name for the output file. Default: Standard'
  type: File?
  inputBinding:
    prefix: --output
- id: in_debug
  doc: Developer messages
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_info
  doc: Prints additional information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_out
  doc: --version             show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Provide a name for the output file. Default: Standard'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spatyper:0.3.3--py_0
cwlVersion: v1.1
baseCommand:
- spaTyper
