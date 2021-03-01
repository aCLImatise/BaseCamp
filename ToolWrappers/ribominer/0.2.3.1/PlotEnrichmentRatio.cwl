class: CommandLineTool
id: PlotEnrichmentRatio.cwl
inputs:
- id: in_input
  doc: "Input file in txt format.And the files has three\ncolumns; column 1: sample;columns\
    \ 2: start_density;\ncolumn 3: stop_density"
  type: File?
  inputBinding:
    prefix: --input
- id: in_downstream_codon
  doc: "Downstream codon corresponding to start codon (codon\nunit). While corresponding\
    \ to stop codon, it is the\nupstream codon."
  type: string?
  inputBinding:
    prefix: --downstream_codon
- id: in_upstream_codon
  doc: "Upstream codon corresponding to start codon (codon\nunit). While corresponding\
    \ to stop codon, it is the\ndownstream codon."
  type: string?
  inputBinding:
    prefix: --upstream_codon
- id: in_output
  doc: Prefix of output files.[required]
  type: string?
  inputBinding:
    prefix: --output
- id: in_format
  doc: Output file format,'pdf','png' or 'jpg'. default=pdf
  type: File?
  inputBinding:
    prefix: --format
- id: in_ymin
  doc: The max of ylim. default=none
  type: long?
  inputBinding:
    prefix: --ymin
- id: in_ymax
  doc: The max of ylim. default=none
  type: long?
  inputBinding:
    prefix: --ymax
- id: in_unit
  doc: Unit for density calculation.[codon or nt]
  type: string?
  inputBinding:
    prefix: --unit
- id: in_mode
  doc: "Mode for plot, you can chose plot all samples or\nsingle sample. [all or single]"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_a_xv_line
  doc: "Position to plot a vertical line in x axis.\ndefault=none"
  type: string?
  inputBinding:
    prefix: --axvline
- id: in_a_xh_line
  doc: "Position to plot a vertical line in y axis.\ndefault=none"
  type: string?
  inputBinding:
    prefix: --axhline
- id: in_label
  doc: The legend labels used for plot. default=none
  type: string?
  inputBinding:
    prefix: --label
- id: in_slide_window
  doc: "Using slide window to average the density.Input a\ntrue strings such as yes,\
    \ y or 1. none=default"
  type: long?
  inputBinding:
    prefix: --slide-window
- id: in_start
  doc: The start position need to be averaged.default=5
  type: long?
  inputBinding:
    prefix: --start
- id: in_window
  doc: The length of silde window. ddefault=7
  type: long?
  inputBinding:
    prefix: --window
- id: in_step
  doc: The step length of slide window. default=1
  type: long?
  inputBinding:
    prefix: --step
- id: in_ci
  doc: "plot the confidence intervals or not. If yes, plot the\nCI region(95% CI default\
    \ the same as\nmetageneAnalysis.py). else, no. default=none\n"
  type: long?
  inputBinding:
    prefix: --CI
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: Output file format,'pdf','png' or 'jpg'. default=pdf
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- PlotEnrichmentRatio
