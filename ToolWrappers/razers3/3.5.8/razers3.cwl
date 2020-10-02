class: CommandLineTool
id: razers3.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean
  inputBinding:
    prefix: --version-check
- id: in_percent_identity
  doc: 'Percent identity threshold. In range [50..100]. Default: 95.'
  type: double
  inputBinding:
    prefix: --percent-identity
- id: in_recognition_rate
  doc: 'Percent recognition rate. In range [80..100]. Default: 100.'
  type: double
  inputBinding:
    prefix: --recognition-rate
- id: in_no_gaps
  doc: 'Allow only mismatches, no indels. Default: allow both.'
  type: boolean
  inputBinding:
    prefix: --no-gaps
- id: in_forward
  doc: Map reads only to forward strands.
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: Map reads only to reverse strands.
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_max_hits
  doc: 'Output only <NUM> of the best hits. In range [1..inf]. Default: 100.'
  type: long
  inputBinding:
    prefix: --max-hits
- id: in_unique
  doc: Output only unique best matches (-m 1 -dr 0 -pa).
  type: boolean
  inputBinding:
    prefix: --unique
- id: in_trim_reads
  doc: 'Trim reads to given length. Default: off. In range [14..inf].'
  type: long
  inputBinding:
    prefix: --trim-reads
- id: in_output
  doc: "Mapping result filename (use - to dump to stdout in razers format).\nDefault:\
    \ <READS FILE>.razers. Valid filetypes are: .sam, .razers,\n.gff, .fasta, .fa,\
    \ .eland, .bam, and .afg."
  type: File
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_v_verbose
  doc: Very verbose mode.
  type: boolean
  inputBinding:
    prefix: --vverbose
- id: in_library_length
  doc: 'Paired-end library length. In range [1..inf]. Default: 220.'
  type: long
  inputBinding:
    prefix: --library-length
- id: in_library_error
  doc: 'Paired-end library length tolerance. In range [0..inf]. Default: 50.'
  type: long
  inputBinding:
    prefix: --library-error
- id: in_alignment
  doc: Dump the alignment for each match (only razer or fasta format).
  type: boolean
  inputBinding:
    prefix: --alignment
- id: in_purge_ambiguous
  doc: Purge reads with more than <max-hits> best matches.
  type: boolean
  inputBinding:
    prefix: --purge-ambiguous
- id: in_distance_range
  doc: "Only consider matches with at most NUM more errors compared to the\nbest.\
    \ Default: output all."
  type: long
  inputBinding:
    prefix: --distance-range
- id: in_genome_naming
  doc: "Select how genomes are named (see Naming section below). In range\n[0..1].\
    \ Default: 0."
  type: long
  inputBinding:
    prefix: --genome-naming
- id: in_read_naming
  doc: "Select how reads are named (see Naming section below). In range\n[0..3]. Default:\
    \ 0."
  type: long
  inputBinding:
    prefix: --read-naming
- id: in_full_read_id
  doc: Use the whole read id (don't clip after whitespace).
  type: boolean
  inputBinding:
    prefix: --full-readid
- id: in_sort_order
  doc: "Select how matches are sorted (see Sorting section below). In range\n[0..1].\
    \ Default: 0."
  type: long
  inputBinding:
    prefix: --sort-order
- id: in_position_format
  doc: "Select begin/end position numbering (see Coordinate section below).\nIn range\
    \ [0..1]. Default: 0."
  type: long
  inputBinding:
    prefix: --position-format
- id: in_dont_shrink_alignments
  doc: "Disable alignment shrinking in SAM. This is required for generating\na gold\
    \ mapping for Rabema."
  type: boolean
  inputBinding:
    prefix: --dont-shrink-alignments
- id: in_filter
  doc: "Select k-mer filter. One of pigeonhole and swift. Default:\npigeonhole."
  type: string
  inputBinding:
    prefix: --filter
- id: in_mutation_rate
  doc: "Set the percent mutation rate (pigeonhole). In range [0..20].\nDefault: 5."
  type: double
  inputBinding:
    prefix: --mutation-rate
- id: in_overlap_length
  doc: "Manually set the overlap length of adjacent k-mers (pigeonhole). In\nrange\
    \ [0..inf]."
  type: long
  inputBinding:
    prefix: --overlap-length
- id: in_param_dir
  doc: Read user-computed parameter files in the directory <DIR> (swift).
  type: Directory
  inputBinding:
    prefix: --param-dir
- id: in_threshold
  doc: "Manually set minimum k-mer count threshold (swift). In range\n[1..inf]."
  type: long
  inputBinding:
    prefix: --threshold
- id: in_taboo_length
  doc: 'Set taboo length (swift). In range [1..inf]. Default: 1.'
  type: long
  inputBinding:
    prefix: --taboo-length
- id: in_shape
  doc: Manually set k-mer shape.
  type: string
  inputBinding:
    prefix: --shape
- id: in_overabundance_cut
  doc: 'Set k-mer overabundance cut ratio. In range [0..1]. Default: 1.'
  type: long
  inputBinding:
    prefix: --overabundance-cut
- id: in_repeat_length
  doc: "Skip simple-repeats of length <NUM>. In range [1..inf]. Default:\n1000."
  type: long
  inputBinding:
    prefix: --repeat-length
- id: in_load_factor
  doc: "Set the load factor for the open addressing k-mer index. In range\n[1..inf].\
    \ Default: 1.6."
  type: double
  inputBinding:
    prefix: --load-factor
- id: in_match_n
  doc: 'N matches all other characters. Default: N matches nothing.'
  type: boolean
  inputBinding:
    prefix: --match-N
- id: in_error_distr
  doc: Write error distribution to FILE.
  type: File
  inputBinding:
    prefix: --error-distr
- id: in_mismatch_file
  doc: Write mismatch patterns to FILE.
  type: File
  inputBinding:
    prefix: --mismatch-file
- id: in_compact_mult
  doc: "Multiply compaction threshold by this value after reaching and\ncompacting.\
    \ In range [0..inf]. Default: 2.2."
  type: double
  inputBinding:
    prefix: --compact-mult
- id: in_no_compact_frac
  doc: "Don't compact if in this last fraction of genome. In range [0..1].\nDefault:\
    \ 0.05."
  type: double
  inputBinding:
    prefix: --no-compact-frac
- id: in_thread_count
  doc: "Set the number of threads to use (0 to force sequential mode). In\nrange [0..inf].\
    \ Default: 1."
  type: long
  inputBinding:
    prefix: --thread-count
- id: in_parallel_window_size
  doc: "Collect candidates in windows of this length. In range [1..inf].\nDefault:\
    \ 500000."
  type: long
  inputBinding:
    prefix: --parallel-window-size
- id: in_parallel_verification_size
  doc: "Verify candidates in packages of this size. In range [1..inf].\nDefault: 100."
  type: long
  inputBinding:
    prefix: --parallel-verification-size
- id: in_parallel_verification_max_package_count
  doc: "Largest number of packages to create for verification per thread-1.\nIn range\
    \ [1..inf]. Default: 100."
  type: long
  inputBinding:
    prefix: --parallel-verification-max-package-count
- id: in_available_matches_memory_size
  doc: "Bytes of main memory available for storing matches. In range\n[-1..inf]. Default:\
    \ 0."
  type: long
  inputBinding:
    prefix: --available-matches-memory-size
- id: in_match_histo_start_threshold
  doc: 'When to start histogram. In range [1..inf]. Default: 5.'
  type: long
  inputBinding:
    prefix: --match-histo-start-threshold
- id: in_two_zero_zero_three_six_zero_bp_dot
  doc: VERSION
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Mapping result filename (use - to dump to stdout in razers format).\nDefault:\
    \ <READS FILE>.razers. Valid filetypes are: .sam, .razers,\n.gff, .fasta, .fa,\
    \ .eland, .bam, and .afg."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- razers3
