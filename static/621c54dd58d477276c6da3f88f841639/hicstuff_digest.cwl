class: CommandLineTool
id: hicstuff_digest.cwl
inputs:
- id: in_circular
  doc: Specify if the genome is circular.
  type: boolean?
  inputBinding:
    prefix: --circular
- id: in_enzyme
  doc: "[,ENZ2,...]     A restriction enzyme or an integer\nrepresenting fixed chunk\
    \ sizes (in bp).\nMultiple comma-separated enzymes can\nbe given."
  type: long?
  inputBinding:
    prefix: --enzyme
- id: in_force
  doc: Write even if the output file already exists.
  type: File?
  inputBinding:
    prefix: --force
- id: in_size
  doc: "Minimum size threshold to keep\nfragments. [default: 0]"
  type: long?
  inputBinding:
    prefix: --size
- id: in_outdir
  doc: "Directory where the fragments and\ncontigs files will be written.\nDefaults\
    \ to current directory."
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_plot
  doc: "Show a histogram of fragment length\ndistribution after digestion."
  type: boolean?
  inputBinding:
    prefix: --plot
- id: in_fig_dir
  doc: "Path to directory of the output figure.\nBy default, the figure is only shown\n\
    but not saved."
  type: File?
  inputBinding:
    prefix: --figdir
- id: in_fast_a
  doc: Fasta file to be digested
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Write even if the output file already exists.
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_fig_dir
  doc: "Path to directory of the output figure.\nBy default, the figure is only shown\n\
    but not saved."
  type: File?
  outputBinding:
    glob: $(inputs.in_fig_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicstuff:2.3.2--py_0
cwlVersion: v1.1
baseCommand:
- hicstuff
- digest
