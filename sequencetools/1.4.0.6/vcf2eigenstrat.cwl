class: CommandLineTool
id: ../../../vcf2eigenstrat.cwl
inputs:
- id: snp_file
  doc: 'specify an Eigenstrat SNP file with the positions and alleles of a reference
    set. If this option is given, only positions that are both in the SNP file and
    in the VCF will be output. Without this option, all sites in the VCF will be output.
    WARNING: Sites that are not in the VCF will not be output, and this is new behaviour.
    Previously one could specify that they will be output as missing or hom-ref, but
    that feature was recently removed. I plan to implement this behaviour in the future
    in a new eigenstrat-merging tool.'
  type: File
  inputBinding:
    prefix: --snpFile
- id: out_prefix
  doc: 'specify the filenames for the EigenStrat SNP and IND file outputs: <FILE_PREFIX>.snp.txt
    and <FILE_PREFIX>.ind.txt'
  type: File
  inputBinding:
    prefix: --outPrefix
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2eigenstrat
