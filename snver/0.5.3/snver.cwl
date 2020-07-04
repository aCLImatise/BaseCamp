class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/snver.cwl
inputs:
- id: input_file_required
  doc: <input file (required) >
  type: boolean
  inputBinding:
    prefix: -i
- id: reference_file_required
  doc: <reference file (required) >
  type: boolean
  inputBinding:
    prefix: -r
- id: target_region_bed
  doc: <target region bed file (default is null) >
  type: boolean
  inputBinding:
    prefix: -l
- id: prefix_output_file
  doc: <prefix output file (default is input_file name) >
  type: boolean
  inputBinding:
    prefix: -o
- id: number_haploids_default
  doc: <the number of haploids (default is 2) >
  type: boolean
  inputBinding:
    prefix: -n
- id: het
  doc: <heterozygosity (default is 0.001) >
  type: boolean
  inputBinding:
    prefix: -het
- id: mq
  doc: <mapping quality threshold (default is 20) >
  type: boolean
  inputBinding:
    prefix: -mq
- id: bq
  doc: <base quality threshold (default is 17) >
  type: boolean
  inputBinding:
    prefix: -bq
- id: strand_bias_threshold
  doc: <strand bias threshold (default is 0.0001) >
  type: boolean
  inputBinding:
    prefix: -s
- id: fisher_exact_threshold
  doc: <fisher exact threshold (default is 0.0001) >
  type: boolean
  inputBinding:
    prefix: -f
- id: pvalue_threshold_default
  doc: <p-value threshold (default is bonferroni=0.05) >
  type: boolean
  inputBinding:
    prefix: -p
- id: at_least_how
  doc: <at least how many reads supporting each strand for alternative allele (default
    is 1)>
  type: boolean
  inputBinding:
    prefix: -a
- id: discard_locus_ratio
  doc: <discard locus with ratio of alt/ref below the threshold (default is 0.25)>
  type: boolean
  inputBinding:
    prefix: -b
- id: inactivate_s_threshold
  doc: <inactivate -s and -f above this threshold (default is 30)  >
  type: boolean
  inputBinding:
    prefix: -u
- id: db
  doc: '<path for dbSNP, column number of chr, pos and snp_id (format: dbsnp,1,2,3;
    default null)>'
  type: boolean
  inputBinding:
    prefix: -db
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- snver
