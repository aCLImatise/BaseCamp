class: CommandLineTool
id: sra_pileup_orig.2.10.9.cwl
inputs:
- id: in_aligned_region
  doc: "<name[:from-to]>  Filter by position on genome. Name can\neither be file specific\
    \ name (ex: \"chr1\" or\n\"1\"). \"from\" and \"to\" are 1-based coordinates"
  type: boolean?
  inputBinding:
    prefix: --aligned-region
- id: in_outfile
  doc: "Output will be written to this file instead\nof std-out"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_table
  doc: "Which alignment table(s) to use (p|s|e):\nprimary, secondary,\nevidence-interval\
    \ (default p)"
  type: string?
  inputBinding:
    prefix: --table
- id: in_bzip_two
  doc: Compress output using bzip2
  type: boolean?
  inputBinding:
    prefix: --bzip2
- id: in_gzip
  doc: Compress output using gzip
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_timing
  doc: write timing log-file
  type: boolean?
  inputBinding:
    prefix: --timing
- id: in_ngc
  doc: path to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_min_mapq
  doc: "Minimum mapq-value,  alignments with lower\nmapq will be ignored (default=0)"
  type: long?
  inputBinding:
    prefix: --minmapq
- id: in_duplicates
  doc: process duplicates 0..off/1..on
  type: long?
  inputBinding:
    prefix: --duplicates
- id: in_spot_groups
  doc: divide by spotgroups
  type: boolean?
  inputBinding:
    prefix: --spotgroups
- id: in_depth_per_spot_group
  doc: print depth per spotgroup
  type: boolean?
  inputBinding:
    prefix: --depth-per-spotgroup
- id: in_seqname
  doc: use original seq-name
  type: boolean?
  inputBinding:
    prefix: --seqname
- id: in_min_mismatch
  doc: "min percent of mismatches used in function\nmismatch, default is 5%"
  type: boolean?
  inputBinding:
    prefix: --minmismatch
- id: in_merge_dist
  doc: "If adjacent slices are closer than this,\nthey are merged and skiplist is\
    \ created.\na value of zero disables the feature,\ndefault is 10000"
  type: boolean?
  inputBinding:
    prefix: --merge-dist
- id: in_no_qual
  doc: omit qualities
  type: boolean?
  inputBinding:
    prefix: --noqual
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'sra-pileup-orig.2.10.9 : 2.10.9'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output will be written to this file instead\nof std-out"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- sra-pileup-orig.2.10.9
