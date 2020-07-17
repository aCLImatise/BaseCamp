class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ectyper.cwl
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
- id: percent_identity_o_type
  doc: Percent identity required for an O antigen allele match [default 90]
  type: string
  inputBinding:
    prefix: --percentIdentityOtype
- id: percent_identity_h_type
  doc: Percent identity required for an H antigen allele match [default 95]
  type: string
  inputBinding:
    prefix: --percentIdentityHtype
- id: percent_coverage_o_type
  doc: Minumum percent coverage required for an O antigen allele match [default 95]
  type: string
  inputBinding:
    prefix: --percentCoverageOtype
- id: percent_coverage_h_type
  doc: Minumum percent coverage required for an H antigen allele match [default 50]
  type: string
  inputBinding:
    prefix: --percentCoverageHtype
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
  doc: Print more detailed log including debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: db_path
  doc: Path to a custom database of O and H antigen alleles in JSON format. Check
    Data/ectyper_database.json for more information
  type: string
  inputBinding:
    prefix: --dbpath
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- ectyper
