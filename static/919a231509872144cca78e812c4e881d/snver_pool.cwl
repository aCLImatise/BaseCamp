class: CommandLineTool
id: snver_pool.cwl
inputs:
- id: i
  doc: <input directory (required) >
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: <reference file (required) >
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: <pool info file (preferred) >
  type: boolean
  inputBinding:
    prefix: -c
- id: n
  doc: <the number of haploids (required when option "-c" is not given)>
  type: boolean
  inputBinding:
    prefix: -n
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
- id: t
  doc: <allele frequency threshold (default is 0)>
  type: boolean
  inputBinding:
    prefix: -t
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
- snver-pool
