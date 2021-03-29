class: CommandLineTool
id: bcftools_norm.cwl
inputs:
- id: in_atomize
  doc: Decompose complex variants (e.g. MNVs become consecutive SNVs)
  type: boolean?
  inputBinding:
    prefix: --atomize
- id: in_atom_overlaps
  doc: "'*'|.       Use the star allele (*) for overlapping alleles or set to missing\
    \ (.) [*]"
  type: boolean?
  inputBinding:
    prefix: --atom-overlaps
- id: in_check_ref
  doc: '|w|x|s         Check REF alleles and exit (e), warn (w), exclude (x), or set
    (s) bad sites [e]'
  type: string?
  inputBinding:
    prefix: --check-ref
- id: in_remove_duplicates
  doc: Remove duplicate lines of the same type.
  type: boolean?
  inputBinding:
    prefix: --remove-duplicates
- id: in_rm_dup
  doc: Remove duplicate snps|indels|both|all|exact
  type: string?
  inputBinding:
    prefix: --rm-dup
- id: in_fast_a_ref
  doc: Reference sequence
  type: File?
  inputBinding:
    prefix: --fasta-ref
- id: in_force
  doc: Try to proceed even if malformed tags are encountered. Experimental, use at
    your own risk
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_keep_sum
  doc: ',..           Keep vector sum constant when splitting multiallelics (see github
    issue #360)'
  type: long?
  inputBinding:
    prefix: --keep-sum
- id: in_multi_allelic_s
  doc: '-|+TYPE     Split multiallelics (-) or join biallelics (+), type: snps|indels|both|any
    [both]'
  type: boolean?
  inputBinding:
    prefix: --multiallelics
- id: in_no_version
  doc: Do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_do_not_normalize
  doc: Do not normalize indels (with -m or -c s)
  type: boolean?
  inputBinding:
    prefix: --do-not-normalize
- id: in_old_rec_tag
  doc: Annotate modified records with INFO/STR indicating the original variant
  type: string?
  inputBinding:
    prefix: --old-rec-tag
- id: in_output
  doc: Write output to a file [standard output]
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
  doc: Restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: Restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_strict_filter
  doc: When merging (-m+), merged site is PASS only if all sites being merged PASS
  type: boolean?
  inputBinding:
    prefix: --strict-filter
- id: in_targets
  doc: Similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: Similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_threads
  doc: Use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_site_win
  doc: Buffer for sorting lines which changed position during realignment [1000]
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
  doc: Write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- norm
