class: CommandLineTool
id: snver_pool.cwl
inputs:
- id: in_input_directory_required
  doc: <input directory (required) >
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_reference_file_required
  doc: <reference file (required) >
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_pool_info_file
  doc: <pool info file (preferred) >
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_number_when_given
  doc: <the number of haploids (required when option "-c" is not given)>
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_target_region_bed
  doc: <target region bed file (default is null) >
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_prefix_output_file
  doc: <prefix output file (default is input_file name) >
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_mq
  doc: <mapping quality threshold (default is 20) >
  type: boolean?
  inputBinding:
    prefix: -mq
- id: in_bq
  doc: <base quality threshold (default is 17) >
  type: boolean?
  inputBinding:
    prefix: -bq
- id: in_strand_bias_threshold
  doc: <strand bias threshold (default is 0.0001) >
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_fisher_exact_threshold
  doc: <fisher exact threshold (default is 0.0001) >
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_pvalue_threshold_default
  doc: <p-value threshold (default is bonferroni=0.05) >
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_least_how_many
  doc: <at least how many reads supporting each strand for alternative allele (default
    is 1)>
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_allele_frequency_threshold
  doc: <allele frequency threshold (default is 0)>
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_inactivate_s_threshold
  doc: <inactivate -s and -f above this threshold (default is 30)  >
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_db
  doc: '<path for dbSNP, column number of chr, pos and snp_id (format: dbsnp,1,2,3;
    default null)>'
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- snver-pool
