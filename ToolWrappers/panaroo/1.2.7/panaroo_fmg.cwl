class: CommandLineTool
id: panaroo_fmg.cwl
inputs:
- id: in_tree
  doc: A dated phylogeny.
  type: string?
  inputBinding:
    prefix: --tree
- id: in_pa
  doc: A presence/absence produced by Panaroo.
  type: string?
  inputBinding:
    prefix: --pa
- id: in_outfile
  doc: Name of outputfile.
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_n_boot
  doc: The number of sub-sampling bootstrap iterations to
  type: long?
  inputBinding:
    prefix: --nboot
- id: in_verbose
  doc: print additional output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_perform_dot
  doc: -t N_CPU, --threads N_CPU
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Name of outputfile.
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panaroo:1.2.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- panaroo-fmg
