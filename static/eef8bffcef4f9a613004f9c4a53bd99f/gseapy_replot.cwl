class: CommandLineTool
id: gseapy_replot.cwl
inputs:
- id: in_in_dir
  doc: "The GSEA desktop results directroy that you want to\nreproduce the figure"
  type: string?
  inputBinding:
    prefix: --indir
- id: in_outdir
  doc: "The GSEApy output directory. Default: the current\nworking directory"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_format
  doc: "File extensions supported by Matplotlib active\nbackend, choose from {'pdf',\
    \ 'png', 'jpeg','ps',\n'eps','svg'}. Default: 'pdf'."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_fs
  doc: "height, --figsize width height\nThe figsize keyword argument need two parameters\
    \ to\ndefine. Default: (6.5, 6)"
  type: double?
  inputBinding:
    prefix: --fs
- id: in_graph
  doc: 'Numbers of top graphs produced. Default: 20'
  type: long?
  inputBinding:
    prefix: --graph
- id: in_no_plot
  doc: "Speed up computing by suppressing the plot output.This\nis useful only if\
    \ data are interested. Default: False."
  type: boolean?
  inputBinding:
    prefix: --no-plot
- id: in_verbose
  doc: Increase output verbosity, print out progress of your
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_job
  doc: -w float, --weight float
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "The GSEApy output directory. Default: the current\nworking directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gseapy:0.10.4--py_0
cwlVersion: v1.1
baseCommand:
- gseapy
- replot
