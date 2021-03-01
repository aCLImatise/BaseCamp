class: CommandLineTool
id: tandem_genotypes_plot.cwl
inputs:
- id: in_rows
  doc: arrange the graphs in this many rows (default=4)
  type: long?
  inputBinding:
    prefix: --rows
- id: in_cols
  doc: arrange the graphs in this many columns (default=4)
  type: long?
  inputBinding:
    prefix: --cols
- id: in_num
  doc: graph the top NUM repeat regions (default=ROWS*COLS)
  type: long?
  inputBinding:
    prefix: --num
- id: in_sample
  doc: select SAMPLE-th sample to plot (default=1)
  type: long?
  inputBinding:
    prefix: --sample
- id: in_pointsize
  doc: text size (default=8)
  type: long?
  inputBinding:
    prefix: --pointsize
- id: in_reads
  doc: show expected coverage for FASTA or FASTQ reads
  type: File?
  inputBinding:
    prefix: --reads
- id: in_verbose
  doc: show more details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_tandem_genotypes_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_pdf
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tandem-genotypes-plot
