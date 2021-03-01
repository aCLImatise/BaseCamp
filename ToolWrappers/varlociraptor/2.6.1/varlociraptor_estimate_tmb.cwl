class: CommandLineTool
id: varlociraptor_estimate_tmb.cwl
inputs:
- id: in_coding_genome_size
  doc: 'Size (in bases) of the covered coding genome. [default: 3e7]'
  type: long?
  inputBinding:
    prefix: --coding-genome-size
- id: in_plot_mode
  doc: 'How to plot (as stratified curve or as histogram). [possible values: hist,
    curve]'
  type: string?
  inputBinding:
    prefix: --plot-mode
- id: in_somatic_tumor_events
  doc: "...\nEvents to consider (e.g. SOMATIC_TUMOR). [default: SOMATIC_TUMOR]"
  type: string?
  inputBinding:
    prefix: --somatic-tumor-events
- id: in_tumor_sample
  doc: "Name of the tumor sample in the given VCF/BCF. [default: tumor]\n"
  type: string?
  inputBinding:
    prefix: --tumor-sample
- id: in_calls_dot_bcf_vertical_line_vg_two_svg
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varlociraptor:2.6.1--hd5fb649_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- estimate
- tmb
