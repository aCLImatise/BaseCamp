class: CommandLineTool
id: SampleSimilarity.cwl
inputs:
- id: in
  doc: Input variant lists in VCF format (two or more). If only one file is given,
    each line in this file is interpreted as an input file path.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: mode
  doc: "Mode (input format). Default value: 'vcf' Valid: 'vcf,bam'"
  type: string
  inputBinding:
    prefix: -mode
- id: roi
  doc: "Restrict similarity calculation to variants in target region. Default value:\
    \ ''"
  type: File
  inputBinding:
    prefix: -roi
- id: include_go_no_some_s
  doc: "Includes gonosomes into calculation (by default only variants on autosomes\
    \ are considered). Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -include_gonosomes
- id: skip_multi
  doc: "Skip multi-allelic variants instead of throwing an error (VCF mode). Default\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -skip_multi
- id: min_cov
  doc: "Minimum coverage to consider a SNP for the analysis (BAM mode). Default value:\
    \ '30'"
  type: long
  inputBinding:
    prefix: -min_cov
- id: max_snps
  doc: "The maximum number of high-coverage SNPs to extract from BAM. 0 means unlimited\
    \ (BAM mode). Default value: '2000'"
  type: long
  inputBinding:
    prefix: -max_snps
- id: build
  doc: "Genome build used to generate the input (BAM mode). Default value: 'hg19'\
    \ Valid: 'hg19,hg38'"
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
- SampleSimilarity
