class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mason_genome.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: quiet
  doc: Set verbosity to a minimum.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Enable very verbose output.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: seed
  doc: 'The seed to use for the random number generator. Default: 0.'
  type: long
  inputBinding:
    prefix: --seed
- id: out_file
  doc: 'Output file. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*],
    .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any
    of the following extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --out-file
outputs: []
cwlVersion: v1.1
baseCommand:
- mason_genome
