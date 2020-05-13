class: CommandLineTool
id: SampleAncestry.cwl
inputs:
- id: in
  doc: Input variant list(s) in VCF format.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: min_snps
  doc: "Minimum number of informative SNPs for population determination. If less SNPs\
    \ are found, 'NOT_ENOUGH_SNPS' is returned. Default value: '1000'"
  type: long
  inputBinding:
    prefix: -min_snps
- id: pop_dist
  doc: "Minimum relative distance between first/second population score. If below\
    \ this score 'ADMIXED/UNKNOWN' is called. Default value: '0.15'"
  type: double
  inputBinding:
    prefix: -pop_dist
- id: build
  doc: "Genome build used to generate the input. Default value: 'hg19' Valid: 'hg19,hg38'"
  type: string
  inputBinding:
    prefix: -build
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- SampleAncestry
