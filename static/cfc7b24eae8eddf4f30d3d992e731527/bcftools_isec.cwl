class: CommandLineTool
id: bcftools_isec.cwl
inputs:
- id: in_collapse
  doc: treat as identical records with <snps|indels|both|all|some|none>, see man page
    for details [none]
  type: string?
  inputBinding:
    prefix: --collapse
- id: in_complement
  doc: output positions present only in the first file but missing in the others
  type: File?
  inputBinding:
    prefix: --complement
- id: in_exclude
  doc: exclude sites for which the expression is true
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_apply_filters
  doc: require at least one of the listed FILTER strings (e.g. "PASS,.")
  type: string?
  inputBinding:
    prefix: --apply-filters
- id: in_include
  doc: include only sites for which the expression is true
  type: string?
  inputBinding:
    prefix: --include
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_n_files
  doc: '[+-=~]<int>      output positions present in this many (=), this many or more
    (+), this many or fewer (-), the exact (~) files'
  type: boolean?
  inputBinding:
    prefix: --nfiles
- id: in_output
  doc: write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_prefix
  doc: if given, subset each of the input files accordingly, see also -w
  type: string?
  inputBinding:
    prefix: --prefix
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
- id: in_write
  doc: list of files to write with -p given as 1-based indexes. By default, all files
    are written
  type: long?
  inputBinding:
    prefix: --write
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
- id: out_complement
  doc: output positions present only in the first file but missing in the others
  type: File?
  outputBinding:
    glob: $(inputs.in_complement)
- id: out_output
  doc: write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bcftools
- isec
