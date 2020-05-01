#!/usr/bin/env cwl-runner

baseCommand:
- cutadapt
class: CommandLineTool
cwlVersion: v1.0
id: cutadapt
inputs:
- doc: ''
  id: input_fast_q
  inputBinding:
    position: 0
  type: string
- doc: "[{trace}]     Print debug log. 'trace' prints also DP matrices"
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: 'Number of CPU cores to use. Use 0 to auto-detect. Default: 1'
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: "Sequence of an adapter ligated to the 3' end (paired data: of the first read).\
    \ The adapter and subsequent bases are trimmed. If a '$' character is appended\
    \ ('anchoring'), the adapter is only found if it is a suffix of the read."
  id: adapter
  inputBinding:
    prefix: --adapter
  type: string
- doc: "Sequence of an adapter ligated to the 5' end (paired data: of the first read).\
    \ The adapter and any preceding bases are trimmed. Partial matches at the 5' end\
    \ are allowed. If a '^' character is prepended ('anchoring'), the adapter is only\
    \ found if it is a prefix of the read."
  id: front
  inputBinding:
    prefix: --front
  type: string
- doc: "Sequence of an adapter that may be ligated to the 5' or 3' end (paired data:\
    \ of the first read). Both types of matches as described under -a und -g are allowed.\
    \ If the first base of the read is part of the match, the behavior is as with\
    \ -g, otherwise as with -a. This option is mostly for rescuing failed library\
    \ preparations - do not use if you know which end your adapter was ligated to!"
  id: anywhere
  inputBinding:
    prefix: --anywhere
  type: string
- doc: 'Maximum allowed error rate as value between 0 and 1 (no. of errors divided
    by length of matching region). Default: 0.1 (=10%)'
  id: error_rate
  inputBinding:
    prefix: --error-rate
  type: string
- doc: 'Allow only mismatches in alignments. Default: allow both mismatches and indels'
  id: no_indels
  inputBinding:
    prefix: --no-indels
  type: boolean
- doc: 'Remove up to COUNT adapters from each read. Default: 1'
  id: times
  inputBinding:
    prefix: --times
  type: string
- doc: 'Require MINLENGTH overlap between read and adapter for an adapter to be found.
    Default: 3'
  id: overlap
  inputBinding:
    prefix: --overlap
  type: long
- doc: 'Interpret IUPAC wildcards in reads. Default: False'
  id: match_read_wildcards
  inputBinding:
    prefix: --match-read-wildcards
  type: boolean
- doc: Do not interpret IUPAC wildcards in adapters.
  id: no_match_adapter_wildcards
  inputBinding:
    prefix: --no-match-adapter-wildcards
  type: boolean
- doc: "What to do with found adapters. mask: replace with 'N' characters; lowercase:\
    \ convert to lowercase; none: leave unchanged (useful with --discard-untrimmed).\
    \ Default: trim"
  id: action
  inputBinding:
    prefix: --action
  type: string
- doc: 'Check both the read and its reverse complement for adapter matches. If match
    is on reverse-complemented version, output that one. Default: check only read'
  id: rev_comp
  inputBinding:
    prefix: --revcomp
  type: boolean
- doc: Remove bases from each read (first read only if paired). If LENGTH is positive,
    remove bases from the beginning. If LENGTH is negative, remove bases from the
    end. Can be used twice if LENGTHs have different signs. This is applied *before*
    adapter trimming.
  id: cut
  inputBinding:
    prefix: --cut
  type: long
- doc: 3'CUTOFF NextSeq-specific quality trimming (each read). Trims also dark cycles
    appearing as high-quality G bases.
  id: next_seq_trim
  inputBinding:
    prefix: --nextseq-trim
  type: boolean
- doc: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF Trim low-quality\
    \ bases from 5' and/or 3' ends of each read before adapter removal. Applied to\
    \ both reads if data is paired. If one value is given, only the 3' end is trimmed.\
    \ If two comma-separated cutoffs are given, the 5' end is trimmed with the first\
    \ cutoff, the 3' end with the second."
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: 'Assume that quality values in FASTQ are encoded as ascii(quality + N). This
    needs to be set to 64 for some old Illumina FASTQ files. Default: 33'
  id: quality_base
  inputBinding:
    prefix: --quality-base
  type: string
- doc: Shorten reads to LENGTH. Positive values remove bases at the end while negative
    ones remove bases at the beginning. This and the following modifications are applied
    after adapter trimming.
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: Trim N's on ends of reads.
  id: trim_n
  inputBinding:
    prefix: --trim-n
  type: boolean
- doc: Search for TAG followed by a decimal number in the description field of the
    read. Replace the decimal number with the correct length of the trimmed read.
    For example, use --length-tag 'length=' to correct fields like 'length=123'.
  id: length_tag
  inputBinding:
    prefix: --length-tag
  type: string
- doc: Remove this suffix from read names if present. Can be given multiple times.
  id: strip_suffix
  inputBinding:
    prefix: --strip-suffix
  type: string
- doc: Add this prefix to read names. Use {name} to insert the name of the matching
    adapter.
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Add this suffix to read names; can also include {name}
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: Change negative quality values to zero.
  id: zero_cap
  inputBinding:
    prefix: --zero-cap
  type: boolean
- doc: '[:LEN2], --minimum-length LEN[:LEN2] Discard reads shorter than LEN. Default:
    0'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: '[:LEN2], --maximum-length LEN[:LEN2] Discard reads longer than LEN. Default:
    no limit'
  id: m
  inputBinding:
    prefix: -M
  type: string
- doc: Discard reads with more than COUNT 'N' bases. If COUNT is a number between
    0 and 1, it is interpreted as a fraction of the read length.
  id: max_n
  inputBinding:
    prefix: --max-n
  type: string
- doc: Discard reads whose expected number of errors (computed from quality values)
    exceeds ERRORS.
  id: max_expected_errors
  inputBinding:
    prefix: --max-expected-errors
  type: string
- doc: Discard reads that contain an adapter. Use also -O to avoid discarding too
    many randomly matching reads.
  id: discard_trimmed
  inputBinding:
    prefix: --discard-trimmed
  type: boolean
- doc: Discard reads that do not contain an adapter.
  id: discard_untrimmed
  inputBinding:
    prefix: --discard-untrimmed
  type: boolean
- doc: Discard reads that did not pass CASAVA filtering (header has :Y:).
  id: discard_casa_va
  inputBinding:
    prefix: --discard-casava
  type: boolean
- doc: Print only error messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: "Which type of report to print: 'full' or 'minimal'. Default: full"
  id: report
  inputBinding:
    prefix: --report
  type: string
- doc: "Write trimmed reads to FILE. FASTQ or FASTA format is chosen depending on\
    \ input. Summary report is sent to standard output. Use '{name}' for demultiplexing\
    \ (see docs). Default: write to standard output"
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Output FASTA to standard output even on FASTQ input.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: boolean
- doc: Use compression level 1 for gzipped output files (faster, but uses more space)
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: Write information about each read and its adapter matches into FILE. See the
    documentation for the file format.
  id: info_file
  inputBinding:
    prefix: --info-file
  type: File
- doc: When the adapter matches in the middle of a read, write the rest (after the
    adapter) to FILE.
  id: rest_file
  inputBinding:
    prefix: --rest-file
  type: File
- doc: When the adapter has N wildcard bases, write adapter bases matching wildcard
    positions to FILE. (Inaccurate with indels.)
  id: wildcard_file
  inputBinding:
    prefix: --wildcard-file
  type: File
- doc: 'Write reads that are too short (according to length specified by -m) to FILE.
    Default: discard reads'
  id: too_short_output
  inputBinding:
    prefix: --too-short-output
  type: File
- doc: 'Write reads that are too long (according to length specified by -M) to FILE.
    Default: discard reads'
  id: too_long_output
  inputBinding:
    prefix: --too-long-output
  type: File
- doc: 'Write reads that do not contain any adapter to FILE. Default: output to same
    file as trimmed reads'
  id: untrimmed_output
  inputBinding:
    prefix: --untrimmed-output
  type: File
- doc: 3' adapter to be removed from second read in a pair.
  id: a
  inputBinding:
    prefix: -A
  type: string
- doc: 5' adapter to be removed from second read in a pair.
  id: g
  inputBinding:
    prefix: -G
  type: string
- doc: 5'/3 adapter to be removed from second read in a pair.
  id: b
  inputBinding:
    prefix: -B
  type: string
- doc: Remove LENGTH bases from second read in a pair.
  id: u
  inputBinding:
    prefix: -U
  type: long
- doc: Write second read in a pair to FILE.
  id: paired_output
  inputBinding:
    prefix: --paired-output
  type: File
- doc: Treat adapters given with -a/-A etc. as pairs. Either both or none are removed
    from each read pair.
  id: pair_adapters
  inputBinding:
    prefix: --pair-adapters
  type: boolean
- doc: '(any|both|first) Which of the reads in a paired-end read have to match the
    filtering criterion in order for the pair to be filtered. Default: any'
  id: pair_filter
  inputBinding:
    prefix: --pair-filter
  type: boolean
- doc: Read and/or write interleaved paired-end reads.
  id: interleaved
  inputBinding:
    prefix: --interleaved
  type: boolean
- doc: 'Write second read in a pair to this FILE when no adapter was found. Use with
    --untrimmed-output. Default: output to same file as trimmed reads'
  id: untrimmed_paired_output
  inputBinding:
    prefix: --untrimmed-paired-output
  type: File
- doc: Write second read in a pair to this file if pair is too short. Use also --too-short-output.
  id: too_short_paired_output
  inputBinding:
    prefix: --too-short-paired-output
  type: File
- doc: Write second read in a pair to this file if pair is too long. Use also --too-long-output.
  id: too_long_paired_output
  inputBinding:
    prefix: --too-long-paired-output
  type: File
