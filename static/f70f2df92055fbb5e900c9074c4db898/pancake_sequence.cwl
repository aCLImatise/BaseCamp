class: CommandLineTool
id: pancake_sequence.cwl
inputs:
- id: in_pan_file
  doc: Name of PanCake Data Object File (required)
  type: File?
  inputBinding:
    prefix: --panfile
- id: in_chrom
  doc: Chromosome from which sequence originates
  type: string?
  inputBinding:
    prefix: --chrom
- id: in_genome
  doc: "(multiple) .fasta output of GENOME (if set, start and\nstop will be ignored)"
  type: string?
  inputBinding:
    prefix: --genome
- id: in_output
  doc: "file to which .fasta output will be written (DEFAULT =\nSTDOUT)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_linewidth
  doc: line witdth in .fastafile (DEFAULT=100)
  type: long?
  inputBinding:
    prefix: --linewidth
- id: in_start
  doc: (1-based) start position on CHROMOSME (DEFAULT = 1)
  type: long?
  inputBinding:
    prefix: -start
- id: in_stop
  doc: "(1-based) stop position on CHROMOSME (DEFAULT = length\nof CHROMOSME)\n"
  type: long?
  inputBinding:
    prefix: -stop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "file to which .fasta output will be written (DEFAULT =\nSTDOUT)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pancake
- sequence
