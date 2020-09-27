class: CommandLineTool
id: svtools_classify.cwl
inputs:
- id: in_input
  doc: VCF input
  type: string
  inputBinding:
    prefix: --input
- id: in_output
  doc: VCF output [stdout]
  type: string
  inputBinding:
    prefix: --output
- id: in_gender
  doc: "tab delimited file of sample genders (male=1,\nfemale=2) ex: SAMPLE_A 2"
  type: File
  inputBinding:
    prefix: --gender
- id: in_annotation
  doc: BED file of annotated elements
  type: File
  inputBinding:
    prefix: --annotation
- id: in_fraction
  doc: "fraction of reciprocal overlap to apply annotation to\nvariant [0.9]"
  type: double
  inputBinding:
    prefix: --fraction
- id: in_exclude
  doc: "list of samples to exclude from classification\nalgorithms"
  type: File
  inputBinding:
    prefix: --exclude
- id: in_slope_threshold
  doc: "minimum slope absolute value of regression line to\nclassify as DEL or DUP[1.0]"
  type: double
  inputBinding:
    prefix: --slope_threshold
- id: in_r_squared_threshold
  doc: "minimum R^2 correlation value of regression line to\nclassify as DEL or DUP\
    \ [0.2], for large sample\nreclassification"
  type: double
  inputBinding:
    prefix: --rsquared_threshold
- id: in_t_set
  doc: "high quality deletions & duplications training\ndataset[vcf], required by\
    \ naive Bayes reclassification"
  type: string
  inputBinding:
    prefix: --tSet
- id: in_method
  doc: "reclassification method, one of (large_sample,\nnaive_bayes, hybrid)"
  type: string
  inputBinding:
    prefix: --method
- id: in_diag_file
  doc: text file to output method comparisons
  type: File
  inputBinding:
    prefix: --diag_file
- id: in_sex_chrom
  doc: "Comma-separated list of sex chromosome names\n[chrX,chrY]"
  type: string
  inputBinding:
    prefix: --sex-chrom
- id: in_tempdir
  doc: Directory for temp file downloads
  type: File
  inputBinding:
    prefix: --tempdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_diag_file
  doc: text file to output method comparisons
  type: File
  outputBinding:
    glob: $(inputs.in_diag_file)
cwlVersion: v1.1
baseCommand:
- svtools
- classify
