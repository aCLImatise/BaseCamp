class: CommandLineTool
id: getGWASoverlap.pl.cwl
inputs:
- id: d
  doc: '<#> (Overlap distance, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: min
  doc: '<#> (minimum number of significant SNPs to consider study, default: 10)'
  type: boolean
  inputBinding:
    prefix: -min
- id: cpu
  doc: '<#> (number of threads to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: gregor
  doc: <path-to-Reference LD info> (perform enrichment test with GREGOR)
  type: File
  inputBinding:
    prefix: -GREGOR
- id: ld
  doc: <#> (LD threshold for 'buddy SNPs', default 0.8, must be greater than 0.7)
  type: boolean
  inputBinding:
    prefix: -LD
- id: study_id
  doc: <#> (only analyze this study)
  type: boolean
  inputBinding:
    prefix: -studyID
- id: study_id_file
  doc: <#> (only analyze this study)
  type: boolean
  inputBinding:
    prefix: -studyIDfile
- id: snp_out
  doc: (output overlapping snps & buddies as a BED file)
  type: string
  inputBinding:
    prefix: -snpOut
- id: snp_out_all
  doc: (output all SNPs, even if they aren't overlapping)
  type: boolean
  inputBinding:
    prefix: -snpOutAll
outputs: []
cwlVersion: v1.1
baseCommand:
- getGWASoverlap.pl
