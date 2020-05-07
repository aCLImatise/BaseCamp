class: CommandLineTool
id: snver.cwl
inputs:
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: <input file (required) >
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: <reference file (required) >
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: <target region bed file (default is null) >
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: <prefix output file (default is input_file name) >
  type: boolean
  inputBinding:
    prefix: -o
- id: n
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
- id: s
  doc: <strand bias threshold (default is 0.0001) >
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: <fisher exact threshold (default is 0.0001) >
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: <p-value threshold (default is bonferroni=0.05) >
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: <at least how many reads supporting each strand for alternative allele (default
    is 1)>
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: <discard locus with ratio of alt/ref below the threshold (default is 0.25)>
  type: boolean
  inputBinding:
    prefix: -b
- id: u
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
outputs: []
cwlVersion: v1.1
baseCommand:
- snver
