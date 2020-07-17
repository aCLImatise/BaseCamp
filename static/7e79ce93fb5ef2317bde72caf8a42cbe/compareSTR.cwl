class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compareSTR.cwl
inputs:
- id: vcf_one
  doc: First VCF file to compare (must be sorted, bgzipped, and indexed)
  type: string
  inputBinding:
    prefix: --vcf1
- id: vcf_two
  doc: Second VCF file to compare (must be sorted, bgzipped, and indexed)
  type: string
  inputBinding:
    prefix: --vcf2
- id: out
  doc: Prefix to name output files
  type: string
  inputBinding:
    prefix: --out
- id: vcf_type_one
  doc: Type of --vcf1. Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']
  type: string
  inputBinding:
    prefix: --vcftype1
- id: vcf_type_two
  doc: Type of --vcf2. Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']
  type: string
  inputBinding:
    prefix: --vcftype2
- id: samples
  doc: File containing list of samples to include
  type: string
  inputBinding:
    prefix: --samples
- id: region
  doc: Restrict to this region chrom:start-end
  type: string
  inputBinding:
    prefix: --region
- id: stratify_fields
  doc: Comma-separated list of FORMAT fields to stratify by
  type: string
  inputBinding:
    prefix: --stratify-fields
- id: stratify_bin_sizes
  doc: Comma-separated list of min:max:binsize to stratify each field on. Must be
    same length as --stratify- fields.
  type: string
  inputBinding:
    prefix: --stratify-binsizes
- id: stratify_file
  doc: Set to 1 to stratify based on --vcf1. Set to 2 to stratify based on --vcf2.
    Set to 0 to apply stratification to both --vcf1 and --vcf2
  type: string
  inputBinding:
    prefix: --stratify-file
- id: period
  doc: Report results overall and also stratified by repeat unit length (period)
  type: boolean
  inputBinding:
    prefix: --period
- id: bubble_min
  doc: Minimum x/y axis value to display on bubble plots
  type: string
  inputBinding:
    prefix: --bubble-min
- id: bubble_max
  doc: Maximum x/y axis value to display on bubble plots
  type: string
  inputBinding:
    prefix: --bubble-max
- id: verbose
  doc: Print helpful debugging info
  type: boolean
  inputBinding:
    prefix: --verbose
- id: num_records
  doc: For debugging, only process this many records
  type: string
  inputBinding:
    prefix: --numrecords
- id: no_plot
  doc: Don't output any plots. Only produce text output
  type: boolean
  inputBinding:
    prefix: --noplot
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: comparing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: two
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: str
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: call_sets
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- compareSTR
