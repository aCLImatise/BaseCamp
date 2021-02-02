class: CommandLineTool
id: cpat.py.cwl
inputs:
- id: in_gene
  doc: "RNAs either in BED or FASTA format: If this is BED\nformat file, '-r/--ref'\
    \ must also be specified; if\nthis is RNA sequence file in FASTA format, ignore\
    \ the\n' r/--ref ' option. The input BED or FASTA file could\nbe regular text\
    \ file or compressed file (*.gz, *.bz2)\nor accessible url (http://, https://,\
    \ ftp://)."
  type: File
  inputBinding:
    prefix: --gene
- id: in_outfile
  doc: "output file. Tab separated text file: geneID <tab>\nmRNA size <tab> ORF size\
    \ <tab> Fickett Score <tab>\nHexamer Score<tab>Coding Probability."
  type: long
  inputBinding:
    prefix: --outfile
- id: in_hex
  doc: "Prebuilt hexamer frequency table (Human, Mouse, Fly,\nZebrafish). Run 'make_hexamer_tab.py'\
    \ to make this\ntable out of your own training dataset."
  type: string
  inputBinding:
    prefix: --hex
- id: in_log_it_model
  doc: "Prebuilt training model (Human, Mouse, Fly,\nZebrafish). Run 'make_logitModel.py'\
    \ to build logit\nmodel out of your own training datset"
  type: string
  inputBinding:
    prefix: --logitModel
- id: in_ref
  doc: "Reference genome sequences in FASTA format. Ignore\nthis option if FASTA file\
    \ was provided to '-g/--gene'.\nReference genome file will be indexed automatically\n\
    (produce *.fai file along with the original *.fa file\nwithin the same directory)\
    \ if hasn't been done."
  type: File
  inputBinding:
    prefix: --ref
- id: in_start
  doc: "Start codon (DNA sequence, so use 'T' instead of 'U')\nused to define open\
    \ reading frame (ORF). default=ATG"
  type: string
  inputBinding:
    prefix: --start
- id: in_stop
  doc: "Stop codon (DNA sequence, so use 'T' instead of 'U')\nused to define open\
    \ reading frame (ORF). Multiple stop\ncodons should be separated by ','. default=TAG,TAA,TGA\n"
  type: string
  inputBinding:
    prefix: --stop
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cpat.py
