class: CommandLineTool
id: sigprofiler.cwl
inputs:
- id: in_install_genome
  doc: "Install de novo any of the following reference\ngenomes: 'GRCh37', 'GRCh38',\
    \ 'mm9' or 'mm10'."
  type: long
  inputBinding:
    prefix: --install_genome
- id: in_name
  doc: Provide a project name
  type: string
  inputBinding:
    prefix: --name
- id: in_genome
  doc: "Provide a reference genome (ex: GRCh37, GRCh38, mm9 or\nmm10)."
  type: long
  inputBinding:
    prefix: --genome
- id: in_files
  doc: Path where the input vcf files are located.
  type: File
  inputBinding:
    prefix: --files
- id: in_exo_me
  doc: Flag to use only the exome or not.
  type: boolean
  inputBinding:
    prefix: --exome
- id: in_bed
  doc: "BED file that contains a list of ranges to be used in\ngenerating the matrices."
  type: File
  inputBinding:
    prefix: --bed
- id: in_chrom
  doc: Create the matrices on a per chromosome basis.
  type: boolean
  inputBinding:
    prefix: --chrom
- id: in_plot
  doc: Generate the plots for each context.
  type: boolean
  inputBinding:
    prefix: --plot
- id: in_tsb
  doc: "Performs a transcriptional strand bias test for the\n24, 384, and 6144 contexts."
  type: boolean
  inputBinding:
    prefix: --tsb
- id: in_gs
  doc: Performs a gene strand bias test.
  type: boolean
  inputBinding:
    prefix: --gs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sigprofiler
