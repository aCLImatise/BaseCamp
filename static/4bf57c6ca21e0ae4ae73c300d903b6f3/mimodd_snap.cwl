class: CommandLineTool
id: mimodd_snap.cwl
inputs:
- id: ofile
  doc: name of the output file (required)
  type: string
  inputBinding:
    prefix: --ofile
- id: i_format
  doc: 'input file format; must be fastq, gz, sam or bam (default: bam)'
  type: string
  inputBinding:
    prefix: --iformat
- id: o_format
  doc: 'output file format (sam or bam; default: bam)'
  type: string
  inputBinding:
    prefix: --oformat
- id: header
  doc: a SAM file providing header information to be used for the output (required
    for input in fastq format and with unheadered SAM/BAM input, optional for headered
    SAM/BAM input; replaces header information found in the input file
  type: string
  inputBinding:
    prefix: --header
- id: threads
  doc: number of threads to use (overrides config setting)
  type: string
  inputBinding:
    prefix: --threads
- id: memory
  doc: maximal amount of memory to be used in GB (overrides config setting); will
    be respected during sorting only
  type: string
  inputBinding:
    prefix: --memory
- id: no_sort
  doc: output reads in their original order, i.e., do not sort by alignment location
  type: boolean
  inputBinding:
    prefix: --no-sort
- id: quiet
  doc: suppress original messages from SNAP
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: verbose output (independent of SNAP)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: x
  doc: CIGAR strings in the output should use = and X to indicate matches/mismatches
    rather than M (alignment match); USE OF THIS OPTION IS DISCOURAGED as =/X CIGAR
    strings are still not fully supported by useful third- party tools like IGV
  type: boolean
  inputBinding:
    prefix: -X
- id: m_match_notation
  doc: legacy option retained for backwards compatibility; indicates that CIGAR strings
    in the output should use M (alignment match) rather than = and X (sequence (mis-)match);
    -M is implied by default, use -X to turn off
  type: boolean
  inputBinding:
    prefix: --mmatch-notation
- id: sort
  doc: legacy option retained for backwards compatibility; sort output file by alignment
    location; implied by default, use --no-sort to turn off
  type: boolean
  inputBinding:
    prefix: --sort
- id: d
  doc: '[RF|FR|FF|RR|ALL [RF|FR|FF|RR|ALL ...]], --discard-overlapping-mates [RF|FR|FF|RR|ALL
    [RF|FR|FF|RR|ALL ...]] consider overlapping mate pairs of the given orientation
    type(s) anomalous and discard them; default: keep all overlapping mate pairs'
  type: boolean
  inputBinding:
    prefix: -D
- id: s
  doc: 'MAX, --spacing MIN MAX min and max spacing to allow between paired ends (default:
    100 10000)'
  type: long
  inputBinding:
    prefix: -s
- id: d
  doc: 'DISTANCE, --maxdist EDIT DISTANCE maximum edit distance allowed per read or
    pair (default: 8)'
  type: string
  inputBinding:
    prefix: -d
- id: max_seeds
  doc: 'number of seeds to use per read (default: 25)'
  type: string
  inputBinding:
    prefix: --maxseeds
- id: max_hits
  doc: 'maximum hits to consider per seed (default: 250)'
  type: string
  inputBinding:
    prefix: --maxhits
- id: conf_diff
  doc: 'confidence threshold (default: 2)'
  type: string
  inputBinding:
    prefix: --confdiff
- id: conf_adapt
  doc: 'confidence adaptation threshold (default: 7)'
  type: string
  inputBinding:
    prefix: --confadapt
- id: error_rep
  doc: compute error rate assuming wgsim-generated reads
  type: boolean
  inputBinding:
    prefix: --error-rep
- id: explore
  doc: explore some hits of overly popular seeds (useful for filtering)
  type: boolean
  inputBinding:
    prefix: --explore
- id: stop_on_first
  doc: stop on first match within edit distance limit (filtering mode)
  type: boolean
  inputBinding:
    prefix: --stop-on-first
- id: filter_output
  doc: retain only certain read classes in output (a=aligned only, s=single hit only,
    u=unaligned only)
  type: string
  inputBinding:
    prefix: --filter-output
- id: ignore
  doc: ignore non-matching IDs in the paired-end aligner
  type: boolean
  inputBinding:
    prefix: --ignore
- id: selectivity
  doc: selectivity; randomly choose 1/selectivity of the reads to score
  type: string
  inputBinding:
    prefix: --selectivity
- id: c
  doc: '++|+x|x+|xx, --clipping ++|+x|x+|xx specify a combination of two + or x symbols
    to indicate whether to clip low-quality bases from the front and back of reads
    respectively; default: clip from front and back (-C ++)'
  type: boolean
  inputBinding:
    prefix: -C
- id: gap_penalty
  doc: specify a gap penalty to use when generating CIGAR strings
  type: string
  inputBinding:
    prefix: --gap-penalty
- id: idx_seed_size
  doc: 'SIZE Seed size used in building the index (default: 20)'
  type: string
  inputBinding:
    prefix: --idx-seedsize
- id: idx_slack
  doc: 'Hash table slack for indexing (default: 0.3)'
  type: string
  inputBinding:
    prefix: --idx-slack
- id: idx_overflow
  doc: 'factor (between 1 and 1000) to set the size of the index build overflow space
    (default: 40)'
  type: string
  inputBinding:
    prefix: --idx-overflow
- id: idx_out
  doc: DIR   name of the index directory to be created; if given, the index directory
    will be permanent, otherwise a temporary directory will be used
  type: string
  inputBinding:
    prefix: --idx-out
- id: no_prefetch
  doc: disables cache prefetching in the genome; may be helpful for machines with
    small caches or lots of cores/cache
  type: boolean
  inputBinding:
    prefix: --no-prefetch
- id: bind_threads
  doc: bind each thread to its processor (off by default)
  type: boolean
  inputBinding:
    prefix: --bind-threads
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- snap
