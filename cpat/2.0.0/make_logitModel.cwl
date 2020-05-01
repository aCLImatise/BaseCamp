#!/usr/bin/env cwl-runner

baseCommand:
- make_logitModel.py
class: CommandLineTool
cwlVersion: v1.0
id: make_logitmodel.py
inputs:
- doc: "Protein coding transcripts (used to build logit model) either in BED format\
    \ or mRNA sequences in FASTA format: If this is BED format file, '-r' must be\
    \ specified; if this is mRNA sequence file in FASTA format, ignore the '-r' option.\
    \ The input BED or FASTA file could be regular text file or compressed file (*.gz,\
    \ *.bz2) or accessible url. NOTE: transcript ID should be unique."
  id: c_gene
  inputBinding:
    prefix: --cgene
  type: string
- doc: "Non protein coding transcripts (used to build logit model) either in BED format\
    \ or mRNA sequences in FASTA format: If this is BED format file, '-r' must be\
    \ specified; if this is mRNA sequence file in FASTA format, ignore the '-r' option.\
    \ The input BED or FASTA file could be regular text file or compressed file (*.gz,\
    \ *.bz2) or accessible url.  NOTE: transcript ID should be unique."
  id: n_gene
  inputBinding:
    prefix: --ngene
  type: string
- doc: output prefix.
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: Prebuilt hexamer frequency table (Human, Mouse, Fly, Zebrafish). Run 'make_hexamer_tab.py'
    to generate this table.
  id: hex
  inputBinding:
    prefix: --hex
  type: string
- doc: Reference genome sequences in FASTA format. Ignore this option if mRNA sequences
    file was provided to '-g'. Reference genome file will be indexed automatically
    (produce *.fai file along with the original *.fa file within the same directory)
    if hasn't been done.
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: Start codon (DNA sequence, so use 'T' instead of 'U') used to define open reading
    frame (ORF). default=ATG
  id: start
  inputBinding:
    prefix: --start
  type: string
- doc: Stop codon (DNA sequence, so use 'T' instead of 'U') used to define open reading
    frame (ORF). Multiple stop codons should be separated by ','. default=TAG,TAA,TGA
  id: stop
  inputBinding:
    prefix: --stop
  type: string
