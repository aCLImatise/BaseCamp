class: CommandLineTool
id: TOBIAS_PlotChanges.cwl
inputs:
- id: in_bin_detect
  doc: Bindetect_results.txt file from BINDetect run
  type: boolean?
  inputBinding:
    prefix: --bindetect
- id: in_tfs
  doc: Text file containing names of TFs to show in plot (one per line)
  type: boolean?
  inputBinding:
    prefix: --TFS
- id: in_output
  doc: 'Output file for plot (default: bindetect_changes.pdf)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_conditions
  doc: "[ [ ...]]  Ordered list of conditions to show (default: conditions are\nordered\
    \ as within the bindetect file)"
  type: boolean?
  inputBinding:
    prefix: --conditions
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info,\n3: stats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file for plot (default: bindetect_changes.pdf)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- PlotChanges
