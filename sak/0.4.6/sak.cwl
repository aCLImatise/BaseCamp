class: CommandLineTool
id: sak.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: out_path
  doc: 'Path to the resulting file. If omitted, result is printed to stdout in FastQ
    format. Valid filetypes are: .sam, .raw, .frn, .fq, .fna, .ffn, .fastq, .fasta,
    .faa, .fa, and .bam.'
  type: string
  inputBinding:
    prefix: --out-path
- id: rev_comp
  doc: Reverse-complement output.
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: max_length
  doc: Maximal number of sequence characters to write out.
  type: long
  inputBinding:
    prefix: --max-length
- id: line_length
  doc: Set line length in output file. See section Line Length for details. In range
    [-1..inf].
  type: long
  inputBinding:
    prefix: --line-length
outputs: []
cwlVersion: v1.1
baseCommand:
- sak
