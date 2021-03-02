class: CommandLineTool
id: compareSTR.cwl
inputs:
- id: in_vcf_one
  doc: "First VCF file to compare (must be sorted, bgzipped,\nand indexed)"
  type: long?
  inputBinding:
    prefix: --vcf1
- id: in_vcf_two
  doc: "Second VCF file to compare (must be sorted, bgzipped,\nand indexed)"
  type: long?
  inputBinding:
    prefix: --vcf2
- id: in_out
  doc: Prefix to name output files
  type: string?
  inputBinding:
    prefix: --out
- id: in_samples
  doc: File containing list of samples to include
  type: File?
  inputBinding:
    prefix: --samples
- id: in_region
  doc: Restrict to this region chrom:start-end
  type: string?
  inputBinding:
    prefix: --region
- id: in_stratify_fields
  doc: Comma-separated list of FORMAT fields to stratify by
  type: string?
  inputBinding:
    prefix: --stratify-fields
- id: in_stratify_bin_sizes
  doc: "Comma-separated list of min:max:binsize to stratify\neach field on. Must be\
    \ same length as --stratify-\nfields."
  type: long?
  inputBinding:
    prefix: --stratify-binsizes
- id: in_stratify_file
  doc: "Set to 1 to stratify based on --vcf1. Set to 2 to\nstratify based on --vcf2.\
    \ Set to 0 to apply\nstratification to both --vcf1 and --vcf2 (default: 0)"
  type: File?
  inputBinding:
    prefix: --stratify-file
- id: in_period
  doc: "Report results overall and also stratified by repeat\nunit length (period)\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --period
- id: in_bubble_min
  doc: Minimum x/y axis value to display on bubble plots
  type: long?
  inputBinding:
    prefix: --bubble-min
- id: in_bubble_max
  doc: Maximum x/y axis value to display on bubble plots
  type: long?
  inputBinding:
    prefix: --bubble-max
- id: in_verbose
  doc: 'Print helpful debugging info (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_num_records
  doc: For debugging, only process this many records
  type: long?
  inputBinding:
    prefix: --numrecords
- id: in_no_plot
  doc: "Don't output any plots. Only produce text output\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --noplot
- id: in_vcf_type_one
  doc: "Type of --vcf1. Options=['gangstr', 'advntr',\n'hipstr', 'eh', 'popstr'] (default:\
    \ auto)"
  type: long?
  inputBinding:
    prefix: --vcftype1
- id: in_vcf_type_two
  doc: "Type of --vcf2. Options=['gangstr', 'advntr',\n'hipstr', 'eh', 'popstr'] (default:\
    \ auto)"
  type: long?
  inputBinding:
    prefix: --vcftype2
- id: in_ignore_phasing
  doc: "Treat all calls as if they are unphased (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --ignore-phasing
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_comparing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_genotypes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_two
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_tr
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_v_cfs
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trtools:4.0.0--py_0
cwlVersion: v1.1
baseCommand:
- compareSTR
