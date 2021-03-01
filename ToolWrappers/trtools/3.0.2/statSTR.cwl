class: CommandLineTool
id: statSTR.cwl
inputs:
- id: in_input_str_vcf
  doc: Input STR VCF file
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_out
  doc: "Output file prefix. Use stdout to print file to\nstandard output."
  type: File?
  inputBinding:
    prefix: --out
- id: in_vcf_type
  doc: "Options=['gangstr', 'advntr', 'hipstr', 'eh',\n'popstr'] (default: auto)"
  type: string?
  inputBinding:
    prefix: --vcftype
- id: in_samples
  doc: "File containing list of samples to include. Or a\ncomma-separated list of\
    \ files to compute stats\nseparate for each group of samples"
  type: File?
  inputBinding:
    prefix: --samples
- id: in_sample_prefixes
  doc: "Prefixes to name output for each samples group. By\ndefault uses 1,2,3 etc."
  type: long?
  inputBinding:
    prefix: --sample-prefixes
- id: in_region
  doc: Restrict to this region chrom:start-end
  type: string?
  inputBinding:
    prefix: --region
- id: in_thresh
  doc: "Output threshold field (max allele size, used for\nGangSTR strinfo). (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --thresh
- id: in_a_freq
  doc: 'Output allele frequencies (default: False)'
  type: boolean?
  inputBinding:
    prefix: --afreq
- id: in_a_count
  doc: 'Output allele counts (default: False)'
  type: boolean?
  inputBinding:
    prefix: --acount
- id: in_h_wep
  doc: 'Output HWE p-values per loci. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --hwep
- id: in_het
  doc: 'Output heterozygosity of each locus. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --het
- id: in_mean
  doc: 'Output mean of allele frequencies. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --mean
- id: in_mode
  doc: 'Output mode of allele frequencies. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_var
  doc: "Output variance of allele frequencies. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --var
- id: in_num_called
  doc: 'Output number of samples called. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --numcalled
- id: in_use_length
  doc: "Calculate per-locus stats (het, HWE) collapsing\nalleles by length (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --use-length
- id: in_plot_a_freq
  doc: "Output allele frequency plot. Will only do for a\nmaximum of 10 TRs. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --plot-afreq
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
- id: in_computing
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_stats
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_on
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_tr
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_var_24
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file prefix. Use stdout to print file to\nstandard output."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- statSTR
