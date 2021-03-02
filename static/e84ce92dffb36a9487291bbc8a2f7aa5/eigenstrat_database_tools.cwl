class: CommandLineTool
id: eigenstrat_database_tools.cwl
inputs:
- id: in_input
  doc: "The desired input file prefix. Input files are assumed\nto be <INPUT PREFIX>.geno,\
    \ <INPUT PREFIX>.snp and\n<INPUT PREFIX>.ind ."
  type: File?
  inputBinding:
    prefix: --Input
- id: in_output
  doc: "The desired output file prefix. Three output files are\ncreated, <OUTPUT FILES\
    \ PREFIX>.geno , <OUTPUT FILES\nPREFIX>.snp and <OUTPUT FILES PREFIX>.ind ."
  type: File?
  inputBinding:
    prefix: --Output
- id: in_suffix
  doc: "The suffix (if any) that follows .geno/.snp/.ind in\nthe input files. For\
    \ example, specifying '-s .txt'\nwill treat <INPUT PREFIX>.{geno,snp,ind}.txt\
    \ as the\ndesired input files."
  type: File?
  inputBinding:
    prefix: --Suffix
- id: in_check
  doc: "Check the -i .ind file and the second .ind file for\nduplicate individuals.\
    \ Population assignment and/or\nindividual sex are not checked, only individual\
    \ names.\nNames are case sensitive."
  type: File?
  inputBinding:
    prefix: --Check
- id: in_extract
  doc: "Extract the selected individuals from the EigenStrat\ndatabase, creating a\
    \ new set of EigenStrat files with\nthe selected individuals only."
  type: boolean?
  inputBinding:
    prefix: --Extract
- id: in_remove
  doc: "Remove the selected individuals from the EigenStrat\ndatabase, creating a\
    \ new set of EigenStrat files\nwithout the selected individuals."
  type: boolean?
  inputBinding:
    prefix: --Remove
- id: in_sample_list
  doc: "A list of samples to be Extracted (-E) or Removed (-R)\nfrom the database.\
    \ Can be a list of individual names\n(1 per line), or the output of duplicate\
    \ check (-C).\nRequired with -E or -R. Mutually exclusive with -S."
  type: File?
  inputBinding:
    prefix: --SampleList
- id: in_sample
  doc: "A samples to be Extracted (-E) or Removed (-R) from\nthe database. Can be\
    \ called multiple times. Required\nwith -E or -R. Mutually exclusive with -L."
  type: string?
  inputBinding:
    prefix: --Sample
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The desired output file prefix. Three output files are\ncreated, <OUTPUT FILES\
    \ PREFIX>.geno , <OUTPUT FILES\nPREFIX>.snp and <OUTPUT FILES PREFIX>.ind ."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eigenstratdatabasetools:1.0.2--0
cwlVersion: v1.1
baseCommand:
- eigenstrat_database_tools
