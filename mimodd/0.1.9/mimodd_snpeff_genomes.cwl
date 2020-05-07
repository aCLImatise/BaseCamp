class: CommandLineTool
id: mimodd_snpeff_genomes.cwl
inputs:
- id: snp_eff_genomes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config
  doc: location of the SnpEff installation directory. Will override MiModD config
    settings if provided.
  type: File
  inputBinding:
    prefix: --config
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- snpeff-genomes
