class: CommandLineTool
id: RNAsnp.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: in_seq
  doc: File containing the input sequence
  type: File
  inputBinding:
    prefix: --seq
- id: in_snp
  doc: File containing the list of SNP
  type: File
  inputBinding:
    prefix: --snp
- id: in_mode
  doc: "Select the mode of operation (default=`1')\n1 - perform global folding by\
    \ using RNAfold\nand compute the difference in base pair\nprobabilities for all\
    \ sequence intervals\n2 - perform local folding by using RNAplfold\nand compute\
    \ the difference in base pair\nprobabilities for all sequence intervals of\nfixed\
    \ length\n3 - screen putative structure-disruptive SNPs\nin an RNA sequence"
  type: long
  inputBinding:
    prefix: --mode
- id: in_winsize_fold
  doc: "length of flanking sequence on either side of\nSNP to fold  (default=`200')"
  type: long
  inputBinding:
    prefix: --winsizeFold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- RNAsnp
