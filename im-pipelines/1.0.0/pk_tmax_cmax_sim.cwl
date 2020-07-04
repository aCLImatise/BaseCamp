class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pk_tmax_cmax_sim.cwl
inputs:
- id: half_life
  doc: half life (hours)
  type: string
  inputBinding:
    prefix: --half-life
- id: absorption
  doc: half life absorption (hours)
  type: string
  inputBinding:
    prefix: --absorption
- id: dose
  doc: initial dose (mg)
  type: string
  inputBinding:
    prefix: --dose
- id: auc
  doc: AUC (mg/L*hr)
  type: string
  inputBinding:
    prefix: --auc
- id: time
  doc: time (h)
  type: string
  inputBinding:
    prefix: --time
- id: plot_height
  doc: plot height
  type: string
  inputBinding:
    prefix: --plot-height
- id: plot_width
  doc: plot width
  type: string
  inputBinding:
    prefix: --plot-width
- id: font_size
  doc: font size
  type: string
  inputBinding:
    prefix: --font-size
- id: output
  doc: output file base name
  type: string
  inputBinding:
    prefix: --output
- id: quiet
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- pk_tmax_cmax_sim
