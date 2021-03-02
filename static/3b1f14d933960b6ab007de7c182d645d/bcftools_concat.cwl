class: CommandLineTool
id: bcftools_concat.cwl
inputs:
- id: in_allow_overlaps
  doc: First coordinate of the next file can precede last record of the current file.
  type: boolean?
  inputBinding:
    prefix: --allow-overlaps
- id: in_compact_ps
  doc: Do not output PS tag at each site, only at the start of a new phase set block.
  type: boolean?
  inputBinding:
    prefix: --compact-PS
- id: in_rm_dups
  doc: 'Output duplicate records present in multiple files only once: <snps|indels|both|all|none>'
  type: string?
  inputBinding:
    prefix: --rm-dups
- id: in_remove_duplicates
  doc: Alias for -d none
  type: boolean?
  inputBinding:
    prefix: --remove-duplicates
- id: in_file_list
  doc: Read the list of files from a file.
  type: File?
  inputBinding:
    prefix: --file-list
- id: in_ligate
  doc: Ligate phased VCFs by matching phase at overlapping haplotypes
  type: boolean?
  inputBinding:
    prefix: --ligate
- id: in_no_version
  doc: Do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_naive
  doc: Concatenate files without recompression, a header check compatibility is performed
  type: boolean?
  inputBinding:
    prefix: --naive
- id: in_naive_force
  doc: Same as --naive, but header compatibility is not checked. Dangerous, use with
    caution.
  type: boolean?
  inputBinding:
    prefix: --naive-force
- id: in_output
  doc: Write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_min_pq
  doc: Break phase set if phasing quality is lower than <int> [30]
  type: long?
  inputBinding:
    prefix: --min-PQ
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
- id: in_threads
  doc: Use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Set verbosity level [1]
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_a_dot_vcf_do_tgz
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
  dockerPull: quay.io/biocontainers/bcftools:1.11--h7c999a4_0
cwlVersion: v1.1
baseCommand:
- bcftools
- concat
