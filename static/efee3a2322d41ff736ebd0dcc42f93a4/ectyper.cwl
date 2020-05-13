class: CommandLineTool
id: ectyper.cwl
inputs:
- id: input
  doc: Location of E. coli genome file(s). Can be a single file, a comma-separated
    list of files, or a directory
  type: string
  inputBinding:
    prefix: --input
- id: cores
  doc: The number of cores to run ectyper with
  type: string
  inputBinding:
    prefix: --cores
- id: percent_identity
  doc: Percent identity required for an allele match [default 90]
  type: string
  inputBinding:
    prefix: --percentIdentity
- id: percent_length
  doc: Percent length required for an allele match [default 10]
  type: string
  inputBinding:
    prefix: --percentLength
- id: verify
  doc: Enable E. coli species verification
  type: boolean
  inputBinding:
    prefix: --verify
- id: output
  doc: Directory location of output files
  type: string
  inputBinding:
    prefix: --output
- id: refseq
  doc: Location of pre-computed MASH RefSeq sketch. If provided, genomes identified
    as non-E. coli will have their species identified using MASH. For best results
    the pre-sketched RefSeq archive https://gembox.cbcb.um d.edu/mash/refseq.genomes.k21s1000.msh
    is recommended
  type: string
  inputBinding:
    prefix: --refseq
- id: sequence
  doc: Prints the allele sequences if enabled as the final columns of the output
  type: boolean
  inputBinding:
    prefix: --sequence
- id: debug
  doc: Print more detailed log including debug level messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- ectyper
