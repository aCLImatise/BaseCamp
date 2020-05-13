class: CommandLineTool
id: cpat.py.cwl
inputs:
- id: gene
  doc: "RNAs either in BED or FASTA format: If this is BED format file, '-r/--ref'\
    \ must also be specified; if this is RNA sequence file in FASTA format, ignore\
    \ the ' r/--ref ' option. The input BED or FASTA file could be regular text file\
    \ or compressed file (*.gz, *.bz2) or accessible url (http://, https://, ftp://)."
  type: string
  inputBinding:
    prefix: --gene
- id: outfile
  doc: 'output file. Tab separated text file: geneID <tab> mRNA size <tab> ORF size
    <tab> Fickett Score <tab> Hexamer Score<tab>Coding Probability.'
  type: string
  inputBinding:
    prefix: --outfile
- id: hex
  doc: Prebuilt hexamer frequency table (Human, Mouse, Fly, Zebrafish). Run 'make_hexamer_tab.py'
    to make this table out of your own training dataset.
  type: string
  inputBinding:
    prefix: --hex
- id: log_it_model
  doc: Prebuilt training model (Human, Mouse, Fly, Zebrafish). Run 'make_logitModel.py'
    to build logit model out of your own training datset
  type: string
  inputBinding:
    prefix: --logitModel
- id: ref
  doc: Reference genome sequences in FASTA format. Ignore this option if FASTA file
    was provided to '-g/--gene'. Reference genome file will be indexed automatically
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
- cpat.py
