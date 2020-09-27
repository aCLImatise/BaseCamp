class: CommandLineTool
id: SampleSimilarity.cwl
inputs:
- id: in_in
  doc: Input variant lists in VCF format (two or more). If only one file is given,
    each line in this file is interpreted as an input file path.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_mode
  doc: "Mode (input format).\nDefault value: 'vcf'\nValid: 'vcf,bam'"
  type: string
  inputBinding:
    prefix: -mode
- id: in_roi
  doc: "Restrict similarity calculation to variants in target region.\nDefault value:\
    \ ''"
  type: File
  inputBinding:
    prefix: -roi
- id: in_include_go_no_some_s
  doc: "Includes gonosomes into calculation (by default only variants on autosomes\
    \ are considered).\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -include_gonosomes
- id: in_skip_multi
  doc: "Skip multi-allelic variants instead of throwing an error (VCF mode).\nDefault\
    \ value: 'false'"
  type: boolean
  inputBinding:
    prefix: -skip_multi
- id: in_min_cov
  doc: "Minimum coverage to consider a SNP for the analysis (BAM mode).\nDefault value:\
    \ '30'"
  type: long
  inputBinding:
    prefix: -min_cov
- id: in_max_snps
  doc: "The maximum number of high-coverage SNPs to extract from BAM. 0 means unlimited\
    \ (BAM mode).\nDefault value: '2000'"
  type: long
  inputBinding:
    prefix: -max_snps
- id: in_build
  doc: "Genome build used to generate the input (BAM mode).\nDefault value: 'hg19'\n\
    Valid: 'hg19,hg38'"
  type: long
  inputBinding:
    prefix: -build
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- SampleSimilarity
