class: CommandLineTool
id: sigprofiler.cwl
inputs:
- id: install_genome
  doc: "Install de novo any of the following reference genomes: 'GRCh37', 'GRCh38',\
    \ 'mm9' or 'mm10'."
  type: string
  inputBinding:
    prefix: --install_genome
- id: name
  doc: Provide a project name
  type: string
  inputBinding:
    prefix: --name
- id: genome
  doc: 'Provide a reference genome (ex: GRCh37, GRCh38, mm9 or mm10).'
  type: string
  inputBinding:
    prefix: --genome
- id: files
  doc: Path where the input vcf files are located.
  type: File
  inputBinding:
    prefix: --files
- id: exo_me
  doc: Flag to use only the exome or not.
  type: boolean
  inputBinding:
    prefix: --exome
- id: bed
  doc: BED file that contains a list of ranges to be used in generating the matrices.
  type: string
  inputBinding:
    prefix: --bed
- id: chrom
  doc: Create the matrices on a per chromosome basis.
  type: boolean
  inputBinding:
    prefix: --chrom
- id: plot
  doc: Generate the plots for each context.
  type: boolean
  inputBinding:
    prefix: --plot
- id: tsb
  doc: Performs a transcriptional strand bias test for the 24, 384, and 6144 contexts.
  type: boolean
  inputBinding:
    prefix: --tsb
- id: gs
  doc: Performs a gene strand bias test.
  type: boolean
  inputBinding:
    prefix: --gs
outputs: []
cwlVersion: v1.1
baseCommand:
- sigprofiler
