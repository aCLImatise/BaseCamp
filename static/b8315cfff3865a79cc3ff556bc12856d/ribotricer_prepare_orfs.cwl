class: CommandLineTool
id: ribotricer_prepare_orfs.cwl
inputs:
- id: gtf
  doc: Path to GTF file  [required]
  type: string
  inputBinding:
    prefix: --gtf
- id: fast_a
  doc: Path to FASTA file  [required]
  type: string
  inputBinding:
    prefix: --fasta
- id: prefix
  doc: Prefix to output file  [required]
  type: string
  inputBinding:
    prefix: --prefix
- id: min_orf_length
  doc: 'The minimum length (nts) of ORF to include [default: 60]'
  type: long
  inputBinding:
    prefix: --min_orf_length
- id: start_codons
  doc: 'Comma separated list of start codons  [default: ATG]'
  type: string
  inputBinding:
    prefix: --start_codons
- id: stop_codons
  doc: 'Comma separated list of stop codons  [default: TAG,TAA,TGA]'
  type: string
  inputBinding:
    prefix: --stop_codons
- id: longest
  doc: Choose the most upstream start codon if multiple in frame ones exist
  type: boolean
  inputBinding:
    prefix: --longest
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotricer
- prepare-orfs
