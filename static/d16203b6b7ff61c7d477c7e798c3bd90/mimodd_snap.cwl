class: CommandLineTool
id: mimodd_snap.cwl
inputs:
- id: in_ofile
  doc: name of the output file (required)
  type: File
  inputBinding:
    prefix: --ofile
- id: in_i_format
  doc: "input file format; must be fastq, gz, sam or bam\n(default: bam)"
  type: File
  inputBinding:
    prefix: --iformat
- id: in_o_format
  doc: 'output file format (sam or bam; default: bam)'
  type: File
  inputBinding:
    prefix: --oformat
- id: in_header
  doc: "a SAM file providing header information to be used for\nthe output (required\
    \ for input in fastq format and\nwith unheadered SAM/BAM input, optional for headered\n\
    SAM/BAM input; replaces header information found in\nthe input file"
  type: File
  inputBinding:
    prefix: --header
- id: in_threads
  doc: number of threads to use (overrides config setting)
  type: long
  inputBinding:
    prefix: --threads
- id: in_memory
  doc: "maximal amount of memory to be used in GB (overrides\nconfig setting); will\
    \ be respected during sorting only"
  type: string
  inputBinding:
    prefix: --memory
- id: in_no_sort
  doc: "output reads in their original order, i.e., do not\nsort by alignment location"
  type: boolean
  inputBinding:
    prefix: --no-sort
- id: in_quiet
  doc: suppress original messages from SNAP
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose output (independent of SNAP)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_cigar_strings_output
  doc: "CIGAR strings in the output should use = and X to\nindicate matches/mismatches\
    \ rather than M (alignment\nmatch); USE OF THIS OPTION IS DISCOURAGED as =/X CIGAR\n\
    strings are still not fully supported by useful third-\nparty tools like IGV"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_m_match_notation
  doc: "legacy option retained for backwards compatibility;\nindicates that CIGAR\
    \ strings in the output should use\nM (alignment match) rather than = and X (sequence\n\
    (mis-)match); -M is implied by default, use -X to turn\noff"
  type: boolean
  inputBinding:
    prefix: --mmatch-notation
- id: in_sort
  doc: "legacy option retained for backwards compatibility;\nsort output file by alignment\
    \ location; implied by\ndefault, use --no-sort to turn off"
  type: File
  inputBinding:
    prefix: --sort
- id: in_consider_overlapping_pairs
  doc: "[RF|FR|FF|RR|ALL [RF|FR|FF|RR|ALL ...]], --discard-overlapping-mates [RF|FR|FF|RR|ALL\
    \ [RF|FR|FF|RR|ALL ...]]\nconsider overlapping mate pairs of the given\norientation\
    \ type(s) anomalous and discard them;\ndefault: keep all overlapping mate pairs"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_max__spacing
  doc: "MAX, --spacing MIN MAX\nmin and max spacing to allow between paired ends\n\
    (default: 100 10000)"
  type: long
  inputBinding:
    prefix: -s
- id: in_distance__maxdist
  doc: "DISTANCE, --maxdist EDIT DISTANCE\nmaximum edit distance allowed per read\
    \ or pair\n(default: 8)"
  type: long
  inputBinding:
    prefix: -d
- id: in_max_seeds
  doc: 'number of seeds to use per read (default: 25)'
  type: long
  inputBinding:
    prefix: --maxseeds
- id: in_max_hits
  doc: 'maximum hits to consider per seed (default: 250)'
  type: long
  inputBinding:
    prefix: --maxhits
- id: in_conf_diff
  doc: 'confidence threshold (default: 2)'
  type: long
  inputBinding:
    prefix: --confdiff
- id: in_conf_adapt
  doc: 'confidence adaptation threshold (default: 7)'
  type: long
  inputBinding:
    prefix: --confadapt
- id: in_error_rep
  doc: compute error rate assuming wgsim-generated reads
  type: boolean
  inputBinding:
    prefix: --error-rep
- id: in_explore
  doc: "explore some hits of overly popular seeds (useful for\nfiltering)"
  type: boolean
  inputBinding:
    prefix: --explore
- id: in_stop_on_first
  doc: "stop on first match within edit distance limit\n(filtering mode)"
  type: boolean
  inputBinding:
    prefix: --stop-on-first
- id: in_filter_output
  doc: "retain only certain read classes in output (a=aligned\nonly, s=single hit\
    \ only, u=unaligned only)"
  type: string
  inputBinding:
    prefix: --filter-output
- id: in_ignore
  doc: ignore non-matching IDs in the paired-end aligner
  type: boolean
  inputBinding:
    prefix: --ignore
- id: in_selectivity
  doc: "selectivity; randomly choose 1/selectivity of the\nreads to score"
  type: long
  inputBinding:
    prefix: --selectivity
- id: in_xxxx__clipping
  doc: "++|+x|x+|xx, --clipping ++|+x|x+|xx\nspecify a combination of two + or x symbols\
    \ to\nindicate whether to clip low-quality bases from the\nfront and back of reads\
    \ respectively; default: clip\nfrom front and back (-C ++)"
  type: boolean
  inputBinding:
    prefix: -C
- id: in_gap_penalty
  doc: "specify a gap penalty to use when generating CIGAR\nstrings"
  type: string
  inputBinding:
    prefix: --gap-penalty
- id: in_idx_seed_size
  doc: "SIZE\nSeed size used in building the index (default: 20)"
  type: long
  inputBinding:
    prefix: --idx-seedsize
- id: in_idx_slack
  doc: 'Hash table slack for indexing (default: 0.3)'
  type: double
  inputBinding:
    prefix: --idx-slack
- id: in_idx_overflow
  doc: "factor (between 1 and 1000) to set the size of the\nindex build overflow space\
    \ (default: 40)"
  type: long
  inputBinding:
    prefix: --idx-overflow
- id: in_idx_out
  doc: "DIR   name of the index directory to be created; if given,\nthe index directory\
    \ will be permanent, otherwise a\ntemporary directory will be used"
  type: Directory
  inputBinding:
    prefix: --idx-out
- id: in_no_prefetch
  doc: "disables cache prefetching in the genome; may be\nhelpful for machines with\
    \ small caches or lots of\ncores/cache"
  type: boolean
  inputBinding:
    prefix: --no-prefetch
- id: in_bind_threads
  doc: bind each thread to its processor (off by default)
  type: boolean
  inputBinding:
    prefix: --bind-threads
- id: in_snap
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: name of the output file (required)
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
- id: out_o_format
  doc: 'output file format (sam or bam; default: bam)'
  type: File
  outputBinding:
    glob: $(inputs.in_o_format)
- id: out_sort
  doc: "legacy option retained for backwards compatibility;\nsort output file by alignment\
    \ location; implied by\ndefault, use --no-sort to turn off"
  type: File
  outputBinding:
    glob: $(inputs.in_sort)
cwlVersion: v1.1
baseCommand:
- mimodd
- snap
