class: CommandLineTool
id: razers3.cwl
inputs:
- id: percent_identity
  doc: 'Percent identity threshold. In range [50..100]. Default: 95.'
  type: string
  inputBinding:
    prefix: --percent-identity
- id: recognition_rate
  doc: 'Percent recognition rate. In range [80..100]. Default: 99.'
  type: string
  inputBinding:
    prefix: --recognition-rate
- id: no_gaps
  doc: 'Allow only mismatches, no indels. Default: allow both.'
  type: boolean
  inputBinding:
    prefix: --no-gaps
- id: forward
  doc: Map reads only to forward strands.
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Map reads only to reverse strands.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: max_hits
  doc: 'Output only <NUM> of the best hits. In range [1..inf]. Default: 100.'
  type: string
  inputBinding:
    prefix: --max-hits
- id: unique
  doc: Output only unique best matches (-m 1 -dr 0 -pa).
  type: boolean
  inputBinding:
    prefix: --unique
- id: trim_reads
  doc: 'Trim reads to given length. Default: off. In range [14..inf].'
  type: string
  inputBinding:
    prefix: --trim-reads
- id: output
  doc: 'Mapping result filename (use - to dump to stdout in razers format). Default:
    <READS FILE>.razers. Valid filetypes are: .razers, .eland, .fa, .fasta, .gff,
    .sam, .bam, and .afg.'
  type: File
  inputBinding:
    prefix: --output
- id: verbose
  doc: Verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: v_verbose
  doc: Very verbose mode.
  type: boolean
  inputBinding:
    prefix: --vverbose
- id: library_length
  doc: 'Paired-end library length. In range [1..inf]. Default: 220.'
  type: string
  inputBinding:
    prefix: --library-length
- id: library_error
  doc: 'Paired-end library length tolerance. In range [0..inf]. Default: 50.'
  type: string
  inputBinding:
    prefix: --library-error
- id: alignment
  doc: Dump the alignment for each match (only razer or fasta format).
  type: boolean
  inputBinding:
    prefix: --alignment
- id: purge_ambiguous
  doc: Purge reads with more than <max-hits> best matches.
  type: boolean
  inputBinding:
    prefix: --purge-ambiguous
- id: distance_range
  doc: 'Only consider matches with at most NUM more errors compared to the best. Default:
    output all.'
  type: string
  inputBinding:
    prefix: --distance-range
- id: genome_naming
  doc: 'Select how genomes are named (see Naming section below). In range [0..1].
    Default: 0.'
  type: string
  inputBinding:
    prefix: --genome-naming
- id: read_naming
  doc: 'Select how reads are named (see Naming section below). In range [0..3]. Default:
    0.'
  type: string
  inputBinding:
    prefix: --read-naming
- id: full_read_id
  doc: Use the whole read id (don't clip after whitespace).
  type: boolean
  inputBinding:
    prefix: --full-readid
- id: sort_order
  doc: 'Select how matches are sorted (see Sorting section below). In range [0..1].
    Default: 0.'
  type: string
  inputBinding:
    prefix: --sort-order
- id: position_format
  doc: 'Select begin/end position numbering (see Coordinate section below). In range
    [0..1]. Default: 0.'
  type: string
  inputBinding:
    prefix: --position-format
- id: dont_shrink_alignments
  doc: Disable alignment shrinking in SAM. This is required for generating a gold
    mapping for Rabema.
  type: boolean
  inputBinding:
    prefix: --dont-shrink-alignments
- id: filter
  doc: 'Select k-mer filter. One of pigeonhole and swift. Default: pigeonhole.'
  type: string
  inputBinding:
    prefix: --filter
- id: mutation_rate
  doc: 'Set the percent mutation rate (pigeonhole). In range [0..20]. Default: 5.'
  type: string
  inputBinding:
    prefix: --mutation-rate
- id: overlap_length
  doc: Manually set the overlap length of adjacent k-mers (pigeonhole). In range [0..inf].
  type: string
  inputBinding:
    prefix: --overlap-length
- id: param_dir
  doc: Read user-computed parameter files in the directory <DIR> (swift).
  type: string
  inputBinding:
    prefix: --param-dir
- id: threshold
  doc: Manually set minimum k-mer count threshold (swift). In range [1..inf].
  type: string
  inputBinding:
    prefix: --threshold
- id: taboo_length
  doc: 'Set taboo length (swift). In range [1..inf]. Default: 1.'
  type: string
  inputBinding:
    prefix: --taboo-length
- id: shape
  doc: Manually set k-mer shape.
  type: string
  inputBinding:
    prefix: --shape
- id: overabundance_cut
  doc: 'Set k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  type: string
  inputBinding:
    prefix: --overabundance-cut
- id: repeat_length
  doc: 'Skip simple-repeats of length <NUM>. In range [1..inf]. Default: 1000.'
  type: string
  inputBinding:
    prefix: --repeat-length
- id: load_factor
  doc: 'Set the load factor for the open addressing k-mer index. In range [1..inf].
    Default: 1.6.'
  type: string
  inputBinding:
    prefix: --load-factor
- id: match_n
  doc: 'N matches all other characters. Default: N matches nothing.'
  type: boolean
  inputBinding:
    prefix: --match-N
- id: error_distr
  doc: Write error distribution to FILE.
  type: File
  inputBinding:
    prefix: --error-distr
- id: mismatch_file
  doc: Write mismatch patterns to FILE.
  type: File
  inputBinding:
    prefix: --mismatch-file
- id: compact_mult
  doc: 'Multiply compaction treshold by this value after reaching and compacting.
    In range [0..inf]. Default: 2.2.'
  type: string
  inputBinding:
    prefix: --compact-mult
- id: no_compact_frac
  doc: "Don't compact if in this last fraction of genome. In range [0..1]. Default:\
    \ 0.05."
  type: string
  inputBinding:
    prefix: --no-compact-frac
- id: thread_count
  doc: 'Set the number of threads to use (0 to force sequential mode). In range [0..inf].
    Default: 1.'
  type: string
  inputBinding:
    prefix: --thread-count
- id: parallel_window_size
  doc: 'Collect candidates in windows of this length. In range [1..inf]. Default:
    500000.'
  type: string
  inputBinding:
    prefix: --parallel-window-size
- id: parallel_verification_size
  doc: 'Verify candidates in packages of this size. In range [1..inf]. Default: 100.'
  type: string
  inputBinding:
    prefix: --parallel-verification-size
- id: parallel_verification_max_package_count
  doc: 'Largest number of packages to create for verification per thread-1. In range
    [1..inf]. Default: 100.'
  type: string
  inputBinding:
    prefix: --parallel-verification-max-package-count
- id: available_matches_memory_size
  doc: 'Bytes of main memory available for storing matches. In range [-1..inf]. Default:
    0.'
  type: string
  inputBinding:
    prefix: --available-matches-memory-size
- id: match_histo_start_threshold
  doc: 'When to start histogram. In range [1..inf]. Default: 5.'
  type: string
  inputBinding:
    prefix: --match-histo-start-threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- razers3
