class: CommandLineTool
id: phenix.py_run_snp_pipeline.cwl
inputs:
- id: in_workflow
  doc: R1/Forward read in Fastq format.
  type: long?
  inputBinding:
    prefix: --workflow
- id: in_r_two
  doc: R2/Reverse read in Fastq format.
  type: long?
  inputBinding:
    prefix: -r2
- id: in_reference
  doc: Rerefence to use for mapping.
  type: string?
  inputBinding:
    prefix: --reference
- id: in_sample_name
  doc: Name of the sample for mapper to include as read groups.
  type: string?
  inputBinding:
    prefix: --sample-name
- id: in_outdir
  doc: "Available mappers: ['bwa', 'bowtie2']"
  type: long?
  inputBinding:
    prefix: --outdir
- id: in_mapper_options
  doc: Custom maper options (advanced)
  type: string?
  inputBinding:
    prefix: --mapper-options
- id: in_variant
  doc: "Available variant callers: ['mpileup', 'gatk']"
  type: string?
  inputBinding:
    prefix: --variant
- id: in_variant_options
  doc: Custom variant options (advanced)
  type: string?
  inputBinding:
    prefix: --variant-options
- id: in_filters
  doc: "Filters to be applied to the VCF in key:value pairs, separated by comma (,).\
    \ Available_filters: ['gq_score', 'dp4_ratio', 'ad_ratio', 'min_depth', 'mq_score',\
    \ 'mq0_ratio', 'uncall_gt', 'qual_score', 'mq0f_ratio']. Recommendations: GATK:\
    \ mq_score:30,min_depth:10,ad_ratio:0.9 Mpileup: mq_score:30,min_depth:10,dp4_ratio:0.9"
  type: double?
  inputBinding:
    prefix: --filters
- id: in_annotators
  doc: "List of annotators to run before filters. Available: ['coverage']"
  type: string[]
  inputBinding:
    prefix: --annotators
- id: in_keep_temp
  doc: 'Keep intermediate files like BAMs and VCFs (default: False).'
  type: boolean?
  inputBinding:
    prefix: --keep-temp
- id: in_json
  doc: 'Also write variant positions in filtered vcf as json file (default: False).'
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_json_info
  doc: 'When writing a json file, log some stats to stdout. (default: False).'
  type: boolean?
  inputBinding:
    prefix: --json-info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phenix.py
- run_snp_pipeline
