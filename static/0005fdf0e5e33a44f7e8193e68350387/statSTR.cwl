class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/statSTR.cwl
inputs:
- id: input_str_vcf
  doc: Input STR VCF file
  type: string
  inputBinding:
    prefix: --vcf
- id: out
  doc: Output file prefix. Use stdout to print file to standard output.
  type: string
  inputBinding:
    prefix: --out
- id: vcf_type
  doc: Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']
  type: string
  inputBinding:
    prefix: --vcftype
- id: samples
  doc: File containing list of samples to include. Or a comma-separated list of files
    to compute stats separate for each group of samples
  type: string
  inputBinding:
    prefix: --samples
- id: sample_prefixes
  doc: Prefixes to name output for each samples group. By default uses 1,2,3 etc.
  type: string
  inputBinding:
    prefix: --sample-prefixes
- id: region
  doc: Restrict to this region chrom:start-end
  type: string
  inputBinding:
    prefix: --region
- id: thresh
  doc: Output threshold field (max allele size, used for GangSTR strinfo).
  type: boolean
  inputBinding:
    prefix: --thresh
- id: a_freq
  doc: Output allele frequencies
  type: boolean
  inputBinding:
    prefix: --afreq
- id: a_count
  doc: Output allele counts
  type: boolean
  inputBinding:
    prefix: --acount
- id: h_wep
  doc: Output HWE p-values per loci.
  type: boolean
  inputBinding:
    prefix: --hwep
- id: het
  doc: Output heterozygosity of each locus.
  type: boolean
  inputBinding:
    prefix: --het
- id: mean
  doc: Output mean of allele frequencies.
  type: boolean
  inputBinding:
    prefix: --mean
- id: mode
  doc: Output mode of allele frequencies.
  type: boolean
  inputBinding:
    prefix: --mode
- id: var
  doc: Output variance of allele frequencies.
  type: boolean
  inputBinding:
    prefix: --var
- id: num_called
  doc: Output number of samples called.
  type: boolean
  inputBinding:
    prefix: --numcalled
- id: use_length
  doc: Calculate per-locus stats (het, HWE) collapsing alleles by length
  type: boolean
  inputBinding:
    prefix: --use-length
- id: plot_a_freq
  doc: Output allele frequency plot. Will only do for a maximum of 10 TRs.
  type: boolean
  inputBinding:
    prefix: --plot-afreq
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
- id: computing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: stats
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: on
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: str
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_23
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- statSTR
