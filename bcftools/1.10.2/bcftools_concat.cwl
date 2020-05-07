class: CommandLineTool
id: bcftools_concat.cwl
inputs:
- id: allow_overlaps
  doc: First coordinate of the next file can precede last record of the current file.
  type: boolean
  inputBinding:
    prefix: --allow-overlaps
- id: compact_ps
  doc: Do not output PS tag at each site, only at the start of a new phase set block.
  type: boolean
  inputBinding:
    prefix: --compact-PS
- id: rm_dups
  doc: 'Output duplicate records present in multiple files only once: <snps|indels|both|all|none>'
  type: string
  inputBinding:
    prefix: --rm-dups
- id: remove_duplicates
  doc: Alias for -d none
  type: boolean
  inputBinding:
    prefix: --remove-duplicates
- id: file_list
  doc: Read the list of files from a file.
  type: File
  inputBinding:
    prefix: --file-list
- id: ligate
  doc: Ligate phased VCFs by matching phase at overlapping haplotypes
  type: boolean
  inputBinding:
    prefix: --ligate
- id: no_version
  doc: Do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: naive
  doc: Concatenate files without recompression, a header check compatibility is performed
  type: boolean
  inputBinding:
    prefix: --naive
- id: naive_force
  doc: Same as --naive, but header compatibility is not checked. Dangerous, use with
    caution.
  type: boolean
  inputBinding:
    prefix: --naive-force
- id: output
  doc: Write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: '<b|u|z|v>    b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v:
    uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: min_pq
  doc: Break phase set if phasing quality is lower than <int> [30]
  type: long
  inputBinding:
    prefix: --min-PQ
- id: regions
  doc: Restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: Restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: threads
  doc: Use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: verbose
  doc: <0|1>            Set verbosity level [1]
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- concat
