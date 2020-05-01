#!/usr/bin/env cwl-runner

baseCommand:
- mvp
class: CommandLineTool
cwlVersion: v1.0
id: mvp
inputs:
- doc: 'vcf or vcf.gz file containing mutations (default: stdin)'
  id: in_file
  inputBinding:
    position: 0
  type: string
- doc: 'results table (default: stdout)'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: reference sequence in fasta format
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: file containing a list of motifs to check
  id: motif_file
  inputBinding:
    prefix: --motif-file
  type: string
- doc: a comma-delimited string of motifs to check
  id: motif_list
  inputBinding:
    prefix: --motif-list
  type: string
- doc: 'DNA or amino acid (default: dna)'
  id: sequence_type
  inputBinding:
    prefix: --sequence-type
  type: string
