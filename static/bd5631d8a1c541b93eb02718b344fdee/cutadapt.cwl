class: CommandLineTool
id: cutadapt.cwl
inputs:
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: debug
  doc: "[{trace}]     Print debug log. 'trace' prints also DP matrices"
  type: boolean
  inputBinding:
    prefix: --debug
- id: cores
  doc: 'Number of CPU cores to use. Use 0 to auto-detect. Default: 1'
  type: string
  inputBinding:
    prefix: --cores
- id: adapter
  doc: "Sequence of an adapter ligated to the 3' end (paired data: of the first read).\
    \ The adapter and subsequent bases are trimmed. If a '$' character is appended\
    \ ('anchoring'), the adapter is only found if it is a suffix of the read."
  type: string
  inputBinding:
    prefix: --adapter
- id: front
  doc: "Sequence of an adapter ligated to the 5' end (paired data: of the first read).\
    \ The adapter and any preceding bases are trimmed. Partial matches at the 5' end\
    \ are allowed. If a '^' character is prepended ('anchoring'), the adapter is only\
    \ found if it is a prefix of the read."
  type: string
  inputBinding:
    prefix: --front
- id: anywhere
  doc: "Sequence of an adapter that may be ligated to the 5' or 3' end (paired data:\
    \ of the first read). Both types of matches as described under -a und -g are allowed.\
    \ If the first base of the read is part of the match, the behavior is as with\
    \ -g, otherwise as with -a. This option is mostly for rescuing failed library\
    \ preparations - do not use if you know which end your adapter was ligated to!"
  type: string
  inputBinding:
    prefix: --anywhere
- id: error_rate
  doc: 'Maximum allowed error rate as value between 0 and 1 (no. of errors divided
    by length of matching region). Default: 0.1 (=10%)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: no_indels
  doc: 'Allow only mismatches in alignments. Default: allow both mismatches and indels'
  type: boolean
  inputBinding:
    prefix: --no-indels
- id: times
  doc: 'Remove up to COUNT adapters from each read. Default: 1'
  type: string
  inputBinding:
    prefix: --times
- id: overlap
  doc: 'Require MINLENGTH overlap between read and adapter for an adapter to be found.
    Default: 3'
  type: long
  inputBinding:
    prefix: --overlap
- id: match_read_wildcards
  doc: 'Interpret IUPAC wildcards in reads. Default: False'
  type: boolean
  inputBinding:
    prefix: --match-read-wildcards
- id: no_match_adapter_wildcards
  doc: Do not interpret IUPAC wildcards in adapters.
  type: boolean
  inputBinding:
    prefix: --no-match-adapter-wildcards
- id: action
  doc: "What to do with found adapters. mask: replace with 'N' characters; lowercase:\
    \ convert to lowercase; none: leave unchanged (useful with --discard-untrimmed).\
    \ Default: trim"
  type: string
  inputBinding:
    prefix: --action
- id: rev_comp
  doc: 'Check both the read and its reverse complement for adapter matches. If match
    is on reverse-complemented version, output that one. Default: check only read'
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: cut
  doc: Remove bases from each read (first read only if paired). If LENGTH is positive,
    remove bases from the beginning. If LENGTH is negative, remove bases from the
    end. Can be used twice if LENGTHs have different signs. This is applied *before*
    adapter trimming.
  type: long
  inputBinding:
    prefix: --cut
- id: next_seq_trim
  doc: 3'CUTOFF NextSeq-specific quality trimming (each read). Trims also dark cycles
    appearing as high-quality G bases.
  type: boolean
  inputBinding:
    prefix: --nextseq-trim
- id: q
  doc: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF Trim low-quality\
    \ bases from 5' and/or 3' ends of each read before adapter removal. Applied to\
    \ both reads if data is paired. If one value is given, only the 3' end is trimmed.\
    \ If two comma-separated cutoffs are given, the 5' end is trimmed with the first\
    \ cutoff, the 3' end with the second."
  type: boolean
  inputBinding:
    prefix: -q
- id: quality_base
  doc: 'Assume that quality values in FASTQ are encoded as ascii(quality + N). This
    needs to be set to 64 for some old Illumina FASTQ files. Default: 33'
  type: string
  inputBinding:
    prefix: --quality-base
- id: length
  doc: Shorten reads to LENGTH. Positive values remove bases at the end while negative
    ones remove bases at the beginning. This and the following modifications are applied
    after adapter trimming.
  type: long
  inputBinding:
    prefix: --length
- id: trim_n
  doc: Trim N's on ends of reads.
  type: boolean
  inputBinding:
    prefix: --trim-n
- id: length_tag
  doc: Search for TAG followed by a decimal number in the description field of the
    read. Replace the decimal number with the correct length of the trimmed read.
    For example, use --length-tag 'length=' to correct fields like 'length=123'.
  type: string
  inputBinding:
    prefix: --length-tag
- id: strip_suffix
  doc: Remove this suffix from read names if present. Can be given multiple times.
  type: string
  inputBinding:
    prefix: --strip-suffix
- id: prefix
  doc: Add this prefix to read names. Use {name} to insert the name of the matching
    adapter.
  type: string
  inputBinding:
    prefix: --prefix
- id: suffix
  doc: Add this suffix to read names; can also include {name}
  type: string
  inputBinding:
    prefix: --suffix
- id: zero_cap
  doc: Change negative quality values to zero.
  type: boolean
  inputBinding:
    prefix: --zero-cap
- id: m
  doc: '[:LEN2], --minimum-length LEN[:LEN2] Discard reads shorter than LEN. Default:
    0'
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: '[:LEN2], --maximum-length LEN[:LEN2] Discard reads longer than LEN. Default:
    no limit'
  type: string
  inputBinding:
    prefix: -M
- id: max_n
  doc: Discard reads with more than COUNT 'N' bases. If COUNT is a number between
    0 and 1, it is interpreted as a fraction of the read length.
  type: string
  inputBinding:
    prefix: --max-n
- id: max_expected_errors
  doc: Discard reads whose expected number of errors (computed from quality values)
    exceeds ERRORS.
  type: string
  inputBinding:
    prefix: --max-expected-errors
- id: discard_trimmed
  doc: Discard reads that contain an adapter. Use also -O to avoid discarding too
    many randomly matching reads.
  type: boolean
  inputBinding:
    prefix: --discard-trimmed
- id: discard_untrimmed
  doc: Discard reads that do not contain an adapter.
  type: boolean
  inputBinding:
    prefix: --discard-untrimmed
- id: discard_casa_va
  doc: Discard reads that did not pass CASAVA filtering (header has :Y:).
  type: boolean
  inputBinding:
    prefix: --discard-casava
- id: quiet
  doc: Print only error messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: report
  doc: "Which type of report to print: 'full' or 'minimal'. Default: full"
  type: string
  inputBinding:
    prefix: --report
- id: output
  doc: "Write trimmed reads to FILE. FASTQ or FASTA format is chosen depending on\
    \ input. Summary report is sent to standard output. Use '{name}' for demultiplexing\
    \ (see docs). Default: write to standard output"
  type: File
  inputBinding:
    prefix: --output
- id: fast_a
  doc: Output FASTA to standard output even on FASTQ input.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: z
  doc: Use compression level 1 for gzipped output files (faster, but uses more space)
  type: boolean
  inputBinding:
    prefix: -Z
- id: info_file
  doc: Write information about each read and its adapter matches into FILE. See the
    documentation for the file format.
  type: File
  inputBinding:
    prefix: --info-file
- id: rest_file
  doc: When the adapter matches in the middle of a read, write the rest (after the
    adapter) to FILE.
  type: File
  inputBinding:
    prefix: --rest-file
- id: wildcard_file
  doc: When the adapter has N wildcard bases, write adapter bases matching wildcard
    positions to FILE. (Inaccurate with indels.)
  type: File
  inputBinding:
    prefix: --wildcard-file
- id: too_short_output
  doc: 'Write reads that are too short (according to length specified by -m) to FILE.
    Default: discard reads'
  type: File
  inputBinding:
    prefix: --too-short-output
- id: too_long_output
  doc: 'Write reads that are too long (according to length specified by -M) to FILE.
    Default: discard reads'
  type: File
  inputBinding:
    prefix: --too-long-output
- id: untrimmed_output
  doc: 'Write reads that do not contain any adapter to FILE. Default: output to same
    file as trimmed reads'
  type: File
  inputBinding:
    prefix: --untrimmed-output
- id: a
  doc: 3' adapter to be removed from second read in a pair.
  type: string
  inputBinding:
    prefix: -A
- id: g
  doc: 5' adapter to be removed from second read in a pair.
  type: string
  inputBinding:
    prefix: -G
- id: b
  doc: 5'/3 adapter to be removed from second read in a pair.
  type: string
  inputBinding:
    prefix: -B
- id: u
  doc: Remove LENGTH bases from second read in a pair.
  type: long
  inputBinding:
    prefix: -U
- id: paired_output
  doc: Write second read in a pair to FILE.
  type: File
  inputBinding:
    prefix: --paired-output
- id: pair_adapters
  doc: Treat adapters given with -a/-A etc. as pairs. Either both or none are removed
    from each read pair.
  type: boolean
  inputBinding:
    prefix: --pair-adapters
- id: pair_filter
  doc: '(any|both|first) Which of the reads in a paired-end read have to match the
    filtering criterion in order for the pair to be filtered. Default: any'
  type: boolean
  inputBinding:
    prefix: --pair-filter
- id: interleaved
  doc: Read and/or write interleaved paired-end reads.
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: untrimmed_paired_output
  doc: 'Write second read in a pair to this FILE when no adapter was found. Use with
    --untrimmed-output. Default: output to same file as trimmed reads'
  type: File
  inputBinding:
    prefix: --untrimmed-paired-output
- id: too_short_paired_output
  doc: Write second read in a pair to this file if pair is too short. Use also --too-short-output.
  type: File
  inputBinding:
    prefix: --too-short-paired-output
- id: too_long_paired_output
  doc: Write second read in a pair to this file if pair is too long. Use also --too-long-output.
  type: File
  inputBinding:
    prefix: --too-long-paired-output
outputs: []
cwlVersion: v1.1
baseCommand:
- cutadapt
