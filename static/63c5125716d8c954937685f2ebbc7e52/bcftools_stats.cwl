class: CommandLineTool
id: bcftools_stats.cwl
inputs:
- id: in_af_bins
  doc: allele frequency bins, a list (0.1,0.5,1) or a file (0.1\n0.5\n1)
  type: File?
  inputBinding:
    prefix: --af-bins
- id: in_af_tag
  doc: allele frequency tag to use, by default estimated from AN,AC or GT
  type: string?
  inputBinding:
    prefix: --af-tag
- id: in_on_est_allele_only
  doc: include only 1st allele at multiallelic sites
  type: boolean?
  inputBinding:
    prefix: --1st-allele-only
- id: in_collapse
  doc: treat as identical records with <snps|indels|both|all|some|none>, see man page
    for details [none]
  type: string?
  inputBinding:
    prefix: --collapse
- id: in_depth
  doc: '<int,int,int>          depth distribution: min,max,bin size [0,500,1]'
  type: boolean?
  inputBinding:
    prefix: --depth
- id: in_exclude
  doc: exclude sites for which the expression is true (see man page for details)
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_exons
  doc: tab-delimited file with exons for indel frameshifts (chr,from,to; 1-based,
    inclusive, bgzip compressed)
  type: File?
  inputBinding:
    prefix: --exons
- id: in_apply_filters
  doc: require at least one of the listed FILTER strings (e.g. "PASS,.")
  type: string?
  inputBinding:
    prefix: --apply-filters
- id: in_fast_a_ref
  doc: faidx indexed reference sequence file to determine INDEL context
  type: File?
  inputBinding:
    prefix: --fasta-ref
- id: in_include
  doc: select sites for which the expression is true (see man page for details)
  type: string?
  inputBinding:
    prefix: --include
- id: in_split_by_id
  doc: collect stats for sites with ID separately (known vs novel)
  type: boolean?
  inputBinding:
    prefix: --split-by-ID
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: list of samples for sample stats, "-" to include all samples
  type: string?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: file of samples to include
  type: File?
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_user_ts_tv
  doc: <TAG[:min:max:n]>  collect Ts/Tv stats for any tag using the given binning
    [0:1:100]
  type: boolean?
  inputBinding:
    prefix: --user-tstv
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: produce verbose per-site and per-sample output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_a_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bdotvcfdotgz
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcftools
- stats
