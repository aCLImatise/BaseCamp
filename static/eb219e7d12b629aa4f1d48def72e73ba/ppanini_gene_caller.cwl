class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ppanini_gene_caller.cwl
inputs:
- id: contig
  doc: contigs file (fna)
  type: string
  inputBinding:
    prefix: --contig
- id: fast_q
  doc: reads file (fastq)
  type: string
  inputBinding:
    prefix: --fastq
- id: output
  doc: Path for outputs
  type: string
  inputBinding:
    prefix: --output
- id: output_basename
  doc: 'the basename for the output files [DEFAULT: input file basename]'
  type: string
  inputBinding:
    prefix: --output-basename
- id: uniref
  doc: UniRe90 database
  type: string
  inputBinding:
    prefix: --uniref
- id: resume
  doc: bypass commands if the output files exist
  type: boolean
  inputBinding:
    prefix: --resume
- id: threads
  doc: 'number of threads/processes [DEFAULT: 1]'
  type: string
  inputBinding:
    prefix: --threads
- id: one_contig
  doc: If there is only one contig file for all samples, then this option should be
    provided
  type: boolean
  inputBinding:
    prefix: --one-contig
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_gene_caller
