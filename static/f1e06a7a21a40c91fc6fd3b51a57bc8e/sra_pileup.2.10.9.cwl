class: CommandLineTool
id: sra_pileup.2.10.9.cwl
inputs:
- id: in_aligned_region
  doc: "<name[:from-to]>[,...]\nFilter by position on genome. Name can\neither be\
    \ file specific name (ex: \"chr1\"\nor \"1\"). \"from\" and \"to\" (inclusive)\
    \ are\n1-based coordinates"
  type: boolean?
  inputBinding:
    prefix: --aligned-region
- id: in_outfile
  doc: "Output will be written to this file\ninstead of std-out"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_table
  doc: "Which alignment table(s) to use (p|s|e):\nprimary, secondary, evidence-interval\n\
    (default p)"
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
- id: in_timing
  doc: write timing log-file
  type: boolean?
  inputBinding:
    prefix: --timing
- id: in_min_mapq
  doc: "Minimum mapq-value, alignments with lower\nmapq will be ignored (default=0)"
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
  type: long?
  inputBinding:
    prefix: --minmismatch
- id: in_merge_dist
  doc: "If adjacent slices are closer than this,\nthey are merged and skiplist is\
    \ created.\na value of zero disables the feature,\ndefault is 10000"
  type: long?
  inputBinding:
    prefix: --merge-dist
- id: in_no_qual
  doc: omit qualities (faster)
  type: boolean?
  inputBinding:
    prefix: --noqual
- id: in_function
  doc: "ref = list references, ref-ex = list\nreferences with coverage, count = sort\n\
    pileup with counters stat = strand/tlen\nstatistic, mismatch = only lines with\n\
    mismatches, index = list deletions\ncounts varcount = variation counters (\ncolumns:\
    \ ref-name, ref-pos, ref-base,\ncoverage, mismatch A mismatch C,\nmismatch G,\
    \ mismatch T, deletes,\ninserts, ins after A, ins after C ins\nafter G ins after\
    \ T ) deletes = list\ndeletions greater than 20, indels = list\nonly inserts/deletions"
  type: long?
  inputBinding:
    prefix: --function
- id: in_ngc
  doc: <path> to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_perm
  doc: <path> to permission file
  type: File?
  inputBinding:
    prefix: --perm
- id: in_location
  doc: location in cloud
  type: string?
  inputBinding:
    prefix: --location
- id: in_cart
  doc: <path> to cart file
  type: File?
  inputBinding:
    prefix: --cart
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for\nmore verbosity."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_level
  doc: "Logging level as number or enum string.\nOne of\n(fatal|sys|int|err|warn|info|debug)\
    \ or\n(0-6) Current/default is warn"
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_file_dot
  doc: -h|--help                        print this message
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "Output will be written to this file\ninstead of std-out"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- sra-pileup.2.10.9
