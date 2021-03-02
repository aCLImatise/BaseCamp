class: CommandLineTool
id: bcftools_norm.cwl
inputs:
- id: in_check_ref
  doc: check REF alleles and exit (e), warn (w), exclude (x), or set (s) bad sites
    [e]
  type: string?
  inputBinding:
    prefix: --check-ref
- id: in_remove_duplicates
  doc: remove duplicate lines of the same type.
  type: boolean?
  inputBinding:
    prefix: --remove-duplicates
- id: in_rm_dup
  doc: remove duplicate snps|indels|both|all|exact
  type: string?
  inputBinding:
    prefix: --rm-dup
- id: in_fast_a_ref
  doc: reference sequence
  type: File?
  inputBinding:
    prefix: --fasta-ref
- id: in_force
  doc: try to proceed even if malformed tags are encountered. Experimental, use at
    your own risk
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_keep_sum
  doc: '<tag,..>           keep vector sum constant when splitting multiallelics (see
    github issue #360)'
  type: boolean?
  inputBinding:
    prefix: --keep-sum
- id: in_multi_allelic_s
  doc: '<-|+>[type]   split multiallelics (-) or join biallelics (+), type: snps|indels|both|any
    [both]'
  type: boolean?
  inputBinding:
    prefix: --multiallelics
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_do_not_normalize
  doc: do not normalize indels (with -m or -c s)
  type: boolean?
  inputBinding:
    prefix: --do-not-normalize
- id: in_output
  doc: write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed\
    \ VCF [v]"
  type: string?
  inputBinding:
    prefix: --output-type
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
- id: in_strict_filter
  doc: when merging (-m+), merged site is PASS only if all sites being merged PASS
  type: boolean?
  inputBinding:
    prefix: --strict-filter
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
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_site_win
  doc: buffer for sorting lines which changed position during realignment [1000]
  type: long?
  inputBinding:
    prefix: --site-win
- id: in_in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.11--h7c999a4_0
cwlVersion: v1.1
baseCommand:
- bcftools
- norm
