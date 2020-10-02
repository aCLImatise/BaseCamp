class: CommandLineTool
id: wgfast.cwl
inputs:
- id: in_reference_directory
  doc: path to reference file directory [REQUIRED]
  type: File
  inputBinding:
    prefix: --reference_directory
- id: in_read_directory
  doc: path to directory of fastq files [REQUIRED]
  type: Directory
  inputBinding:
    prefix: --read_directory
- id: in_processors
  doc: '# of processors to use - defaults to 2'
  type: long
  inputBinding:
    prefix: --processors
- id: in_coverage
  doc: "minimum SNP coverage required to be called a SNP -\ndefaults to 3"
  type: long
  inputBinding:
    prefix: --coverage
- id: in_proportion
  doc: "proportion of alleles to be called a SNP, defaults to\n0.9"
  type: double
  inputBinding:
    prefix: --proportion
- id: in_keep
  doc: keep temp files?  Defaults to F
  type: string
  inputBinding:
    prefix: --keep
- id: in_subsample
  doc: Run subsample routine? Defaults to T
  type: string
  inputBinding:
    prefix: --subsample
- id: in_sub_nums
  doc: number of subsamples to process, defaults to 100
  type: long
  inputBinding:
    prefix: --subnums
- id: in_doc
  doc: run depth of coverage on all files?  Defaults to T
  type: string
  inputBinding:
    prefix: --doc
- id: in_temp
  doc: "temporary directory for GATK analysis, defaults to\n/tmp"
  type: Directory
  inputBinding:
    prefix: --temp
- id: in_fudge_factor
  doc: "How close does a subsample have to be from true\nplacement?  Defaults to 0.1"
  type: double
  inputBinding:
    prefix: --fudge_factor
- id: in_only_subs
  doc: Only run sub-sample routine and exit? Defaults to F
  type: string
  inputBinding:
    prefix: --only_subs
- id: in_model
  doc: "which model to run with raxml, GTRGAMMA, ASC_GTRGAMMA,\nGTRCAT, ASC_GTRCAT"
  type: string
  inputBinding:
    prefix: --model
- id: in_g_atk_method
  doc: "How to call GATK? Defaults to\nEMIT_ALL_CONFIDENT_SITES, can be EMIT_ALL_SITES\n"
  type: string
  inputBinding:
    prefix: --gatk_method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wgfast
