class: CommandLineTool
id: make_logitModel.py.cwl
inputs:
- id: c_gene
  doc: "Protein coding transcripts (used to build logit model) either in BED format\
    \ or mRNA sequences in FASTA format: If this is BED format file, '-r' must be\
    \ specified; if this is mRNA sequence file in FASTA format, ignore the '-r' option.\
    \ The input BED or FASTA file could be regular text file or compressed file (*.gz,\
    \ *.bz2) or accessible url. NOTE: transcript ID should be unique."
  type: string
  inputBinding:
    prefix: --cgene
- id: n_gene
  doc: "Non protein coding transcripts (used to build logit model) either in BED format\
    \ or mRNA sequences in FASTA format: If this is BED format file, '-r' must be\
    \ specified; if this is mRNA sequence file in FASTA format, ignore the '-r' option.\
    \ The input BED or FASTA file could be regular text file or compressed file (*.gz,\
    \ *.bz2) or accessible url.  NOTE: transcript ID should be unique."
  type: string
  inputBinding:
    prefix: --ngene
- id: outfile
  doc: output prefix.
  type: string
  inputBinding:
    prefix: --outfile
- id: hex
  doc: Prebuilt hexamer frequency table (Human, Mouse, Fly, Zebrafish). Run 'make_hexamer_tab.py'
    to generate this table.
  type: string
  inputBinding:
    prefix: --hex
- id: ref
  doc: Reference genome sequences in FASTA format. Ignore this option if mRNA sequences
    file was provided to '-g'. Reference genome file will be indexed automatically
    (produce *.fai file along with the original *.fa file within the same directory)
    if hasn't been done.
  type: string
  inputBinding:
    prefix: --ref
- id: start
  doc: Start codon (DNA sequence, so use 'T' instead of 'U') used to define open reading
    frame (ORF). default=ATG
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: Stop codon (DNA sequence, so use 'T' instead of 'U') used to define open reading
    frame (ORF). Multiple stop codons should be separated by ','. default=TAG,TAA,TGA
  type: string
  inputBinding:
    prefix: --stop
outputs: []
cwlVersion: v1.1
baseCommand:
- make_logitModel.py
