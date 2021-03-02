class: CommandLineTool
id: poppunk_easy_run.py.cwl
inputs:
- id: in_r_files
  doc: List of sequence names and files (as for --r-files
  type: string?
  inputBinding:
    prefix: --r-files
- id: in_output
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --output
- id: in_analysis_args
  doc: "Other arguments to pass to poppunk. e.g. '--min-k 13\n--max-k 29'"
  type: long?
  inputBinding:
    prefix: --analysis-args
- id: in_viz
  doc: Run visualisation of output
  type: boolean?
  inputBinding:
    prefix: --viz
- id: in_viz_args
  doc: Options to use for visualisation
  type: string?
  inputBinding:
    prefix: --viz-args
- id: in_pop_punk_exe
  doc: "Location of poppunk executable. Use 'python poppunk-\nrunner.py' to run from\
    \ source tree"
  type: string?
  inputBinding:
    prefix: --poppunk-exe
- id: in_viz_exe
  doc: Location of poppunk_visualisation executable
  type: string?
  inputBinding:
    prefix: --viz-exe
- id: in_easy_run
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.3.0--py_0
cwlVersion: v1.1
baseCommand:
- poppunk_easy_run.py
