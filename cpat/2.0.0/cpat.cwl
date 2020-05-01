#!/usr/bin/env cwl-runner

baseCommand:
- cpat.py
class: CommandLineTool
cwlVersion: v1.0
id: cpat.py
inputs:
- doc: "RNAs either in BED or FASTA format: If this is BED format file, '-r/--ref'\
    \ must also be specified; if this is RNA sequence file in FASTA format, ignore\
    \ the ' r/--ref ' option. The input BED or FASTA file could be regular text file\
    \ or compressed file (*.gz, *.bz2) or accessible url (http://, https://, ftp://)."
  id: gene
  inputBinding:
    prefix: --gene
  type: string
- doc: 'output file. Tab separated text file: geneID <tab> mRNA size <tab> ORF size
    <tab> Fickett Score <tab> Hexamer Score<tab>Coding Probability.'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: Prebuilt hexamer frequency table (Human, Mouse, Fly, Zebrafish). Run 'make_hexamer_tab.py'
    to make this table out of your own training dataset.
  id: hex
  inputBinding:
    prefix: --hex
  type: string
- doc: Prebuilt training model (Human, Mouse, Fly, Zebrafish). Run 'make_logitModel.py'
    to build logit model out of your own training datset
  id: log_it_model
  inputBinding:
    prefix: --logitModel
  type: string
- doc: Reference genome sequences in FASTA format. Ignore this option if FASTA file
    was provided to '-g/--gene'. Reference genome file will be indexed automatically
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
