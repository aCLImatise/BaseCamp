class: CommandLineTool
id: bcftools_isec.cwl
inputs:
- id: collapse
  doc: treat as identical records with <snps|indels|both|all|some|none>, see man page
    for details [none]
  type: string
  inputBinding:
    prefix: --collapse
- id: complement
  doc: output positions present only in the first file but missing in the others
  type: boolean
  inputBinding:
    prefix: --complement
- id: exclude
  doc: exclude sites for which the expression is true
  type: string
  inputBinding:
    prefix: --exclude
- id: apply_filters
  doc: require at least one of the listed FILTER strings (e.g. "PASS,.")
  type: string
  inputBinding:
    prefix: --apply-filters
- id: include
  doc: include only sites for which the expression is true
  type: string
  inputBinding:
    prefix: --include
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: n_files
  doc: '[+-=~]<int>      output positions present in this many (=), this many or more
    (+), this many or fewer (-), the exact (~) files'
  type: boolean
  inputBinding:
    prefix: --nfiles
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: '<b|u|z|v>   b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v:
    uncompressed VCF [v]'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: prefix
  doc: if given, subset each of the input files accordingly, see also -w
  type: string
  inputBinding:
    prefix: --prefix
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
- id: write
  doc: list of files to write with -p given as 1-based indexes. By default, all files
    are written
  type: string
  inputBinding:
    prefix: --write
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- isec
