class: CommandLineTool
id: ../../../gaas_maker_AEDplot.pl.cwl
inputs:
- id: output
  doc: Output name of the pdf file created. If none provided, the default output is
    ouputPlot.pdf
  type: boolean
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_maker_AEDplot.pl
