#!/usr/bin/env cwl-runner

baseCommand:
- rsem-gff3-to-gtf
class: CommandLineTool
cwlVersion: v1.0
id: rsem-gff3-to-gtf
inputs:
- doc: Input GFF3 file.
  id: input_gff3_file
  inputBinding:
    position: 0
  type: string
- doc: Output GTF file.
  id: output_gtf_file
  inputBinding:
    position: 1
  type: string
- doc: 'GFF3 file does not contain transcripts, make each gene as a transcript. (default:
    False)'
  id: make_genes_as_transcripts
  inputBinding:
    prefix: --make-genes-as-transcripts
  type: boolean
- doc: 'Types of RNAs to be extracted, e.g. mRNA,rRNA (default: None)'
  id: rna_patterns
  inputBinding:
    prefix: --RNA-patterns
  type: string
- doc: 'If GFF3 file contains reference sequences, extract them to the specified file
    (default: None)'
  id: extract_sequences
  inputBinding:
    prefix: --extract-sequences
  type: string
