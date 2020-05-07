class: CommandLineTool
id: tandem_genotypes_plot.cwl
inputs:
- id: tandem_genotypes_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_pdf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: rows
  doc: arrange the graphs in this many rows (default=4)
  type: string
  inputBinding:
    prefix: --rows
- id: cols
  doc: arrange the graphs in this many columns (default=4)
  type: string
  inputBinding:
    prefix: --cols
- id: num
  doc: graph the top NUM repeat regions (default=ROWS*COLS)
  type: string
  inputBinding:
    prefix: --num
- id: sample
  doc: select SAMPLE-th sample to plot (default=1)
  type: string
  inputBinding:
    prefix: --sample
- id: pointsize
  doc: text size (default=8)
  type: string
  inputBinding:
    prefix: --pointsize
- id: reads
  doc: show expected coverage for FASTA or FASTQ reads
  type: File
  inputBinding:
    prefix: --reads
- id: verbose
  doc: show more details
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- tandem-genotypes-plot
