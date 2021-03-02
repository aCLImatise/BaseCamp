class: CommandLineTool
id: make_logitModel.py.cwl
inputs:
- id: in_c_gene
  doc: "Protein coding transcripts (used to build logit model)\neither in BED format\
    \ or mRNA sequences in FASTA\nformat: If this is BED format file, '-r' must be\n\
    specified; if this is mRNA sequence file in FASTA\nformat, ignore the '-r' option.\
    \ The input BED or FASTA\nfile could be regular text file or compressed file\n\
    (*.gz, *.bz2) or accessible url. NOTE: transcript ID\nshould be unique."
  type: File?
  inputBinding:
    prefix: --cgene
- id: in_n_gene
  doc: "Non protein coding transcripts (used to build logit\nmodel) either in BED\
    \ format or mRNA sequences in FASTA\nformat: If this is BED format file, '-r'\
    \ must be\nspecified; if this is mRNA sequence file in FASTA\nformat, ignore the\
    \ '-r' option. The input BED or FASTA\nfile could be regular text file or compressed\
    \ file\n(*.gz, *.bz2) or accessible url.  NOTE: transcript ID\nshould be unique."
  type: File?
  inputBinding:
    prefix: --ngene
- id: in_outfile
  doc: output prefix.
  type: string?
  inputBinding:
    prefix: --outfile
- id: in_hex
  doc: "Prebuilt hexamer frequency table (Human, Mouse, Fly,\nZebrafish). Run 'make_hexamer_tab.py'\
    \ to generate this\ntable."
  type: string?
  inputBinding:
    prefix: --hex
- id: in_ref
  doc: "Reference genome sequences in FASTA format. Ignore\nthis option if mRNA sequences\
    \ file was provided to\n'-g'. Reference genome file will be indexed\nautomatically\
    \ (produce *.fai file along with the\noriginal *.fa file within the same directory)\
    \ if\nhasn't been done."
  type: File?
  inputBinding:
    prefix: --ref
- id: in_start
  doc: "Start codon (DNA sequence, so use 'T' instead of 'U')\nused to define open\
    \ reading frame (ORF). default=ATG"
  type: string?
  inputBinding:
    prefix: --start
- id: in_stop
  doc: "Stop codon (DNA sequence, so use 'T' instead of 'U')\nused to define open\
    \ reading frame (ORF). Multiple stop\ncodons should be separated by ','. default=TAG,TAA,TGA\n"
  type: string?
  inputBinding:
    prefix: --stop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- make_logitModel.py
