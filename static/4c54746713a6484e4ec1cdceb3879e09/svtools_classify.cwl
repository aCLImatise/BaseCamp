class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtools_classify.cwl
inputs:
- id: input
  doc: VCF input
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: VCF output [stdout]
  type: string
  inputBinding:
    prefix: --output
- id: gender
  doc: 'tab delimited file of sample genders (male=1, female=2) ex: SAMPLE_A 2'
  type: File
  inputBinding:
    prefix: --gender
- id: annotation
  doc: BED file of annotated elements
  type: string
  inputBinding:
    prefix: --annotation
- id: fraction
  doc: fraction of reciprocal overlap to apply annotation to variant [0.9]
  type: double
  inputBinding:
    prefix: --fraction
- id: exclude
  doc: list of samples to exclude from classification algorithms
  type: File
  inputBinding:
    prefix: --exclude
- id: slope_threshold
  doc: minimum slope absolute value of regression line to classify as DEL or DUP[1.0]
  type: double
  inputBinding:
    prefix: --slope_threshold
- id: r_squared_threshold
  doc: minimum R^2 correlation value of regression line to classify as DEL or DUP
    [0.2], for large sample reclassification
  type: double
  inputBinding:
    prefix: --rsquared_threshold
- id: t_set
  doc: high quality deletions & duplications training dataset[vcf], required by naive
    Bayes reclassification
  type: string
  inputBinding:
    prefix: --tSet
- id: method
  doc: reclassification method, one of (large_sample, naive_bayes, hybrid)
  type: string
  inputBinding:
    prefix: --method
- id: diag_file
  doc: text file to output method comparisons
  type: string
  inputBinding:
    prefix: --diag_file
- id: sex_chrom
  doc: Comma-separated list of sex chromosome names [chrX,chrY]
  type: string
  inputBinding:
    prefix: --sex-chrom
- id: tempdir
  doc: Directory for temp file downloads
  type: string
  inputBinding:
    prefix: --tempdir
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- classify
