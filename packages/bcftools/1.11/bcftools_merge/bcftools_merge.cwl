class: CommandLineTool
id: bcftools_merge.cwl
inputs:
- id: in_force_samples
  doc: resolve duplicate sample names
  type: boolean?
  inputBinding:
    prefix: --force-samples
- id: in_print_header
  doc: print only the merged header and exit
  type: boolean?
  inputBinding:
    prefix: --print-header
- id: in_use_header
  doc: use the provided header
  type: File?
  inputBinding:
    prefix: --use-header
- id: in_missing_to_ref
  doc: assume genotypes at missing sites are 0/0
  type: boolean?
  inputBinding:
    prefix: --missing-to-ref
- id: in_apply_filters
  doc: require at least one of the listed FILTER strings (e.g. "PASS,.")
  type: string?
  inputBinding:
    prefix: --apply-filters
- id: in_filter_logic
  doc: <x|+>           remove filters if some input is PASS ("x"), or apply all filters
    ("+") [+]
  type: boolean?
  inputBinding:
    prefix: --filter-logic
- id: in_gvc_f
  doc: <-|ref.fa>              merge gVCF blocks, INFO/END tag is expected. Implies
    -i QS:sum,MinDP:min,I16:sum,IDV:max,IMF:max
  type: boolean?
  inputBinding:
    prefix: --gvcf
- id: in_info_rules
  doc: <tag:method,..>   rules for merging INFO fields (method is one of sum,avg,min,max,join)
    or "-" to turn off the default [DP:sum,DP4:sum]
  type: boolean?
  inputBinding:
    prefix: --info-rules
- id: in_file_list
  doc: read file names from the file
  type: File?
  inputBinding:
    prefix: --file-list
- id: in_local_alleles
  doc: 'EXPERIMENTAL: if more than <int> ALT alleles are encountered, drop FMT/PL
    and output LAA+LPL instead; 0=unlimited [0]'
  type: long?
  inputBinding:
    prefix: --local-alleles
- id: in_merge
  doc: allow multiallelic records for <snps|indels|both|all|none|id>, see man page
    for details [both]
  type: string?
  inputBinding:
    prefix: --merge
- id: in_no_index
  doc: merge unindexed files, the same chromosomal order is required and -r/-R are
    not allowed
  type: boolean?
  inputBinding:
    prefix: --no-index
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
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
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_a_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bdotvcfdotgz
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- merge
