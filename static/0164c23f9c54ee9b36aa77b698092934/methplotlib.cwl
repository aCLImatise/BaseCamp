class: CommandLineTool
id: ../../../methplotlib.cwl
inputs:
- id: methylation
  doc: methylation data in nanopolish, nanocompore or ont- cram format
  type: string[]
  inputBinding:
    prefix: --methylation
- id: names
  doc: names of datasets in --methylation
  type: string[]
  inputBinding:
    prefix: --names
- id: window
  doc: window (region) to which the visualisation has to be restricted
  type: string
  inputBinding:
    prefix: --window
- id: gtf
  doc: add annotation based on a gtf file matching to your reference genome
  type: string
  inputBinding:
    prefix: --gtf
- id: bed
  doc: add annotation based on a bed file matching to your reference genome
  type: string
  inputBinding:
    prefix: --bed
- id: fast_a
  doc: required when --window is an entire chromosome, contig or transcript
  type: string
  inputBinding:
    prefix: --fasta
- id: simplify
  doc: simplify annotation track to show genes rather than transcripts
  type: boolean
  inputBinding:
    prefix: --simplify
- id: split
  doc: split, rather than overlay the methylation tracks
  type: boolean
  inputBinding:
    prefix: --split
- id: smooth
  doc: When plotting frequencies points are averaged using a rolling window
  type: string
  inputBinding:
    prefix: --smooth
- id: dot_size
  doc: Control the size of dots in the per read plots
  type: string
  inputBinding:
    prefix: --dotsize
- id: example
  doc: Show example command and exit.
  type: boolean
  inputBinding:
    prefix: --example
- id: outfile
  doc: 'File to write results to. Default: methylation_browser_{chr}_{start}_{end}.html.
    Use {region} as a shorthand for {chr}_{start}_{end} in the filename. Missing paths
    will be created.'
  type: string
  inputBinding:
    prefix: --outfile
- id: qc_file
  doc: 'File to write the qc report to. Default: The path in outfile prefixed with
    qc_, default is qc_report_methyl ation_browser_{chr}_{start}_{end}.html. Use {region}
    as a shorthand for {chr}_{start}_{end} in the filename. Missing paths will be
    created.'
  type: string
  inputBinding:
    prefix: --qcfile
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- methplotlib
