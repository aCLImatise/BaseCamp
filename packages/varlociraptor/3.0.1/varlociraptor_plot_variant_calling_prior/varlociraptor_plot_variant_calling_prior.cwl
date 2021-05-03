class: CommandLineTool
id: varlociraptor_plot_variant_calling_prior.cwl
inputs:
- id: in_contig
  doc: Contig to consider for ploidy information.
  type: string?
  inputBinding:
    prefix: --contig
- id: in_sample
  doc: Sample to plot.
  type: string?
  inputBinding:
    prefix: --sample
- id: in_scenario
  doc: Variant calling scenario that configures the prior.
  type: string?
  inputBinding:
    prefix: --scenario
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varlociraptor:3.0.1--hd302352_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- plot
- variant-calling-prior
