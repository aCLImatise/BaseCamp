class: CommandLineTool
id: methplotlib.cwl
inputs:
- id: in_methylation
  doc: "methylation data in nanopolish, nanocompore or ont-\ncram format"
  type: string[]
  inputBinding:
    prefix: --methylation
- id: in_names
  doc: names of datasets in --methylation
  type: string[]
  inputBinding:
    prefix: --names
- id: in_window
  doc: "window (region) to which the visualisation has to be\nrestricted"
  type: string?
  inputBinding:
    prefix: --window
- id: in_gtf
  doc: "add annotation based on a gtf file matching to your\nreference genome"
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_bed
  doc: "add annotation based on a bed file matching to your\nreference genome"
  type: File?
  inputBinding:
    prefix: --bed
- id: in_fast_a
  doc: "required when --window is an entire chromosome, contig\nor transcript"
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_simplify
  doc: simplify annotation track to show genes rather than
  type: boolean?
  inputBinding:
    prefix: --simplify
- id: in_smooth
  doc: "When plotting frequencies points are averaged using a\nrolling window"
  type: string?
  inputBinding:
    prefix: --smooth
- id: in_dot_size
  doc: Control the size of dots in the per read plots
  type: long?
  inputBinding:
    prefix: --dotsize
- id: in_example
  doc: Show example command and exit.
  type: boolean?
  inputBinding:
    prefix: --example
- id: in_outfile
  doc: "File to write results to. Default:\nmethylation_browser_{chr}_{start}_{end}.html.\
    \ Use\n{region} as a shorthand for {chr}_{start}_{end} in the\nfilename. Missing\
    \ paths will be created."
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_qc_file
  doc: "File to write the qc report to. Default: The path in\noutfile prefixed with\
    \ qc_, default is qc_report_methyl\nation_browser_{chr}_{start}_{end}.html. Use\
    \ {region}\nas a shorthand for {chr}_{start}_{end} in the\nfilename. Missing paths\
    \ will be created.\n"
  type: File?
  inputBinding:
    prefix: --qcfile
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_transcripts
  doc: --split               split, rather than overlay the methylation tracks
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- methplotlib
