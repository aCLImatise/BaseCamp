class: CommandLineTool
id: bcftools_norm.cwl
inputs:
- id: in_vcf_gz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: check_ref
  doc: <e|w|x|s>         check REF alleles and exit (e), warn (w), exclude (x), or
    set (s) bad sites [e]
  type: boolean
  inputBinding:
    prefix: --check-ref
- id: remove_duplicates
  doc: remove duplicate lines of the same type.
  type: boolean
  inputBinding:
    prefix: --remove-duplicates
- id: rm_dup
  doc: remove duplicate snps|indels|both|all|exact
  type: string
  inputBinding:
    prefix: --rm-dup
- id: fast_a_ref
  doc: reference sequence
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: force
  doc: try to proceed even if malformed tags are encountered. Experimental, use at
    your own risk
  type: boolean
  inputBinding:
    prefix: --force
- id: multi_allelic_s
  doc: '<-|+>[type]   split multiallelics (-) or join biallelics (+), type: snps|indels|both|any
    [both]'
  type: boolean
  inputBinding:
    prefix: --multiallelics
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: do_not_normalize
  doc: do not normalize indels (with -m or -c s)
  type: boolean
  inputBinding:
    prefix: --do-not-normalize
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed\
    \ VCF [v]"
  type: string
  inputBinding:
    prefix: --output-type
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: strict_filter
  doc: when merging (-m+), merged site is PASS only if all sites being merged PASS
  type: boolean
  inputBinding:
    prefix: --strict-filter
- id: targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: site_win
  doc: buffer for sorting lines which changed position during realignment [1000]
  type: long
  inputBinding:
    prefix: --site-win
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- norm
