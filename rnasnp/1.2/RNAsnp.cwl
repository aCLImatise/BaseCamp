class: CommandLineTool
id: RNAsnp.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: seq
  doc: File containing the input sequence
  type: string
  inputBinding:
    prefix: --seq
- id: snp
  doc: File containing the list of SNP
  type: string
  inputBinding:
    prefix: --snp
- id: mode
  doc: Select the mode of operation (default=`1') 1 - perform global folding by using
    RNAfold and compute the difference in base pair probabilities for all sequence
    intervals 2 - perform local folding by using RNAplfold and compute the difference
    in base pair probabilities for all sequence intervals of fixed length 3 - screen
    putative structure-disruptive SNPs in an RNA sequence
  type: long
  inputBinding:
    prefix: --mode
- id: winsize_fold
  doc: length of flanking sequence on either side of SNP to fold  (default=`200')
  type: long
  inputBinding:
    prefix: --winsizeFold
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAsnp
