class: CommandLineTool
id: ectyper.cwl
inputs:
- id: in_input
  doc: "Location of E. coli genome file(s). Can be a single\nfile, a comma-separated\
    \ list of files, or a directory"
  type: File
  inputBinding:
    prefix: --input
- id: in_cores
  doc: The number of cores to run ectyper with
  type: long
  inputBinding:
    prefix: --cores
- id: in_percent_identity_o_type
  doc: "Percent identity required for an O antigen allele\nmatch [default 90]"
  type: long
  inputBinding:
    prefix: --percentIdentityOtype
- id: in_percent_identity_h_type
  doc: "Percent identity required for an H antigen allele\nmatch [default 95]"
  type: long
  inputBinding:
    prefix: --percentIdentityHtype
- id: in_percent_coverage_o_type
  doc: "Minumum percent coverage required for an O antigen\nallele match [default\
    \ 95]"
  type: long
  inputBinding:
    prefix: --percentCoverageOtype
- id: in_percent_coverage_h_type
  doc: "Minumum percent coverage required for an H antigen\nallele match [default\
    \ 50]"
  type: long
  inputBinding:
    prefix: --percentCoverageHtype
- id: in_verify
  doc: Enable E. coli species verification
  type: boolean
  inputBinding:
    prefix: --verify
- id: in_output
  doc: Directory location of output files
  type: Directory
  inputBinding:
    prefix: --output
- id: in_refseq
  doc: "Location of pre-computed MASH RefSeq sketch. If\nprovided, genomes identified\
    \ as non-E. coli will have\ntheir species identified using MASH. For best results\n\
    the pre-sketched RefSeq archive https://gembox.cbcb.um\nd.edu/mash/refseq.genomes.k21s1000.msh\
    \ is recommended"
  type: long
  inputBinding:
    prefix: --refseq
- id: in_sequence
  doc: "Prints the allele sequences if enabled as the final\ncolumns of the output"
  type: boolean
  inputBinding:
    prefix: --sequence
- id: in_debug
  doc: Print more detailed log including debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_db_path
  doc: "Path to a custom database of O and H antigen alleles\nin JSON format. Check\
    \ Data/ectyper_database.json for\nmore information\n"
  type: File
  inputBinding:
    prefix: --dbpath
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Directory location of output files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ectyper
