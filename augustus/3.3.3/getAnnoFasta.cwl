class: CommandLineTool
id: getAnnoFasta.pl.cwl
inputs:
- id: seq_file
  doc: Input a fasta file with the genomic sequences that AUGUSTUS was run on. When
    this option is given, an additional file with the individual coding exon sequences
    (augustus.cdsexons) is output. and a file with the complete mRNA including UTRs
    (augustus.mrna) is output.
  type: string
  inputBinding:
    prefix: --seqfile
- id: chop_cds
  doc: 'for incomplete transcripts: cut off bases before first codon. This flag only
    takes effect if coding sequence is not included in the AUGUSTUS output.'
  type: boolean
  inputBinding:
    prefix: --chop_cds
outputs: []
cwlVersion: v1.1
baseCommand:
- getAnnoFasta.pl
