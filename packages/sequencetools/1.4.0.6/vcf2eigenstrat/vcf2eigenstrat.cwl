class: CommandLineTool
id: vcf2eigenstrat.cwl
inputs:
- id: in_snp_file
  doc: "specify an Eigenstrat SNP file with the positions and\nalleles of a reference\
    \ set. If this option is given,\nonly positions that are both in the SNP file\
    \ and in\nthe VCF will be output. Without this option, all\nsites in the VCF will\
    \ be output. WARNING: Sites that\nare not in the VCF will not be output, and this\
    \ is\nnew behaviour. Previously one could specify that they\nwill be output as\
    \ missing or hom-ref, but that\nfeature was recently removed. I plan to implement\n\
    this behaviour in the future in a new\neigenstrat-merging tool."
  type: File
  inputBinding:
    prefix: --snpFile
- id: in_out_prefix
  doc: "specify the filenames for the EigenStrat SNP and IND\nfile outputs: <FILE_PREFIX>.snp.txt\
    \ and\n<FILE_PREFIX>.ind.txt\n"
  type: File
  inputBinding:
    prefix: --outPrefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_snp_file
  doc: "specify an Eigenstrat SNP file with the positions and\nalleles of a reference\
    \ set. If this option is given,\nonly positions that are both in the SNP file\
    \ and in\nthe VCF will be output. Without this option, all\nsites in the VCF will\
    \ be output. WARNING: Sites that\nare not in the VCF will not be output, and this\
    \ is\nnew behaviour. Previously one could specify that they\nwill be output as\
    \ missing or hom-ref, but that\nfeature was recently removed. I plan to implement\n\
    this behaviour in the future in a new\neigenstrat-merging tool."
  type: File
  outputBinding:
    glob: $(inputs.in_snp_file)
cwlVersion: v1.1
baseCommand:
- vcf2eigenstrat
