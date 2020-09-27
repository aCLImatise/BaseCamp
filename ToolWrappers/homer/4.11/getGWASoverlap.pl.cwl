class: CommandLineTool
id: getGWASoverlap.pl.cwl
inputs:
- id: in_overlap_distance_default
  doc: '<#> (Overlap distance, default: 1000)'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_min
  doc: '<#> (minimum number of significant SNPs to consider study, default: 10)'
  type: boolean
  inputBinding:
    prefix: -min
- id: in_cpu
  doc: '<#> (number of threads to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_gregor
  doc: <path-to-Reference LD info> (perform enrichment test with GREGOR)
  type: File
  inputBinding:
    prefix: -GREGOR
- id: in_ld
  doc: <#> (LD threshold for 'buddy SNPs', default 0.8, must be greater than 0.7)
  type: boolean
  inputBinding:
    prefix: -LD
- id: in_study_id
  doc: <#> (only analyze this study)
  type: boolean
  inputBinding:
    prefix: -studyID
- id: in_study_id_file
  doc: <#> (only analyze this study)
  type: boolean
  inputBinding:
    prefix: -studyIDfile
- id: in_snp_out
  doc: (output overlapping snps & buddies as a BED file)
  type: File
  inputBinding:
    prefix: -snpOut
- id: in_snp_out_all
  doc: (output all SNPs, even if they aren't overlapping)
  type: boolean
  inputBinding:
    prefix: -snpOutAll
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_snp_out
  doc: (output overlapping snps & buddies as a BED file)
  type: File
  outputBinding:
    glob: $(inputs.in_snp_out)
cwlVersion: v1.1
baseCommand:
- getGWASoverlap.pl
