class: CommandLineTool
id: rsem_gff3_to_gtf.cwl
inputs:
- id: input_gff3_file
  doc: Input GFF3 file.
  type: string
  inputBinding:
    position: 0
- id: output_gtf_file
  doc: Output GTF file.
  type: string
  inputBinding:
    position: 1
- id: make_genes_as_transcripts
  doc: 'GFF3 file does not contain transcripts, make each gene as a transcript. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --make-genes-as-transcripts
- id: rna_patterns
  doc: 'Types of RNAs to be extracted, e.g. mRNA,rRNA (default: None)'
  type: string
  inputBinding:
    prefix: --RNA-patterns
- id: extract_sequences
  doc: 'If GFF3 file contains reference sequences, extract them to the specified file
    (default: None)'
  type: string
  inputBinding:
    prefix: --extract-sequences
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-gff3-to-gtf
