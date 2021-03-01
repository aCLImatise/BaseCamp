class: CommandLineTool
id: mimodd_snpeff_genomes.cwl
inputs:
- id: in_config
  doc: "location of the SnpEff installation directory. Will\noverride MiModD config\
    \ settings if provided."
  type: File?
  inputBinding:
    prefix: --config
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)\n"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_snp_eff_genomes
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- snpeff-genomes
