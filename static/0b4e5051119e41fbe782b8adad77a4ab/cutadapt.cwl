class: CommandLineTool
id: cutadapt.cwl
inputs:
- id: in_debug
  doc: "[{trace}]     Print debug log. 'trace' prints also DP matrices"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_cores
  doc: "Number of CPU cores to use. Use 0 to auto-detect.\nDefault: 1"
  type: long?
  inputBinding:
    prefix: --cores
- id: in_adapter
  doc: "Sequence of an adapter ligated to the 3' end (paired\ndata: of the first read).\
    \ The adapter and subsequent\nbases are trimmed. If a '$' character is appended\n\
    ('anchoring'), the adapter is only found if it is a\nsuffix of the read."
  type: long?
  inputBinding:
    prefix: --adapter
- id: in_front
  doc: "Sequence of an adapter ligated to the 5' end (paired\ndata: of the first read).\
    \ The adapter and any\npreceding bases are trimmed. Partial matches at the 5'\n\
    end are allowed. If a '^' character is prepended\n('anchoring'), the adapter is\
    \ only found if it is a\nprefix of the read."
  type: long?
  inputBinding:
    prefix: --front
- id: in_anywhere
  doc: "Sequence of an adapter that may be ligated to the 5'\nor 3' end (paired data:\
    \ of the first read). Both types\nof matches as described under -a und -g are\
    \ allowed.\nIf the first base of the read is part of the match,\nthe behavior\
    \ is as with -g, otherwise as with -a. This\noption is mostly for rescuing failed\
    \ library\npreparations - do not use if you know which end your\nadapter was ligated\
    \ to!"
  type: long?
  inputBinding:
    prefix: --anywhere
- id: in_error_rate
  doc: "Maximum allowed error rate as value between 0 and 1\n(no. of errors divided\
    \ by length of matching region).\nDefault: 0.1 (=10%)"
  type: long?
  inputBinding:
    prefix: --error-rate
- id: in_no_indels
  doc: "Allow only mismatches in alignments. Default: allow\nboth mismatches and indels"
  type: boolean?
  inputBinding:
    prefix: --no-indels
- id: in_times
  doc: 'Remove up to COUNT adapters from each read. Default: 1'
  type: long?
  inputBinding:
    prefix: --times
- id: in_overlap
  doc: "Require MINLENGTH overlap between read and adapter for\nan adapter to be found.\
    \ Default: 3"
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_match_read_wildcards
  doc: 'Interpret IUPAC wildcards in reads. Default: False'
  type: boolean?
  inputBinding:
    prefix: --match-read-wildcards
- id: in_no_match_adapter_wildcards
  doc: Do not interpret IUPAC wildcards in adapters.
  type: boolean?
  inputBinding:
    prefix: --no-match-adapter-wildcards
- id: in_action
  doc: "What to do with found adapters. mask: replace with 'N'\ncharacters; lowercase:\
    \ convert to lowercase; none:\nleave unchanged (useful with --discard-untrimmed).\n\
    Default: trim"
  type: string?
  inputBinding:
    prefix: --action
- id: in_rev_comp
  doc: "Check both the read and its reverse complement for\nadapter matches. If match\
    \ is on reverse-complemented\nversion, output that one. Default: check only read"
  type: boolean?
  inputBinding:
    prefix: --revcomp
- id: in_cut
  doc: "Remove bases from each read (first read only if\npaired). If LENGTH is positive,\
    \ remove bases from the\nbeginning. If LENGTH is negative, remove bases from\n\
    the end. Can be used twice if LENGTHs have different\nsigns. This is applied *before*\
    \ adapter trimming."
  type: long?
  inputBinding:
    prefix: --cut
- id: in_next_seq_trim
  doc: "'CUTOFF\nNextSeq-specific quality trimming (each read). Trims\nalso dark cycles\
    \ appearing as high-quality G bases."
  type: long?
  inputBinding:
    prefix: --nextseq-trim
- id: in_cutofftrim_lowquality_bases
  doc: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF\nTrim low-quality\
    \ bases from 5' and/or 3' ends of each\nread before adapter removal. Applied to\
    \ both reads if\ndata is paired. If one value is given, only the 3' end\nis trimmed.\
    \ If two comma-separated cutoffs are given,\nthe 5' end is trimmed with the first\
    \ cutoff, the 3'\nend with the second."
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_quality_base
  doc: "Assume that quality values in FASTQ are encoded as\nascii(quality + N). This\
    \ needs to be set to 64 for\nsome old Illumina FASTQ files. Default: 33"
  type: long?
  inputBinding:
    prefix: --quality-base
- id: in_length
  doc: "Shorten reads to LENGTH. Positive values remove bases\nat the end while negative\
    \ ones remove bases at the\nbeginning. This and the following modifications are\n\
    applied after adapter trimming."
  type: long?
  inputBinding:
    prefix: --length
- id: in_trim_n
  doc: Trim N's on ends of reads.
  type: boolean?
  inputBinding:
    prefix: --trim-n
- id: in_length_tag
  doc: "Search for TAG followed by a decimal number in the\ndescription field of the\
    \ read. Replace the decimal\nnumber with the correct length of the trimmed read.\n\
    For example, use --length-tag 'length=' to correct\nfields like 'length=123'."
  type: long?
  inputBinding:
    prefix: --length-tag
- id: in_strip_suffix
  doc: "Remove this suffix from read names if present. Can be\ngiven multiple times."
  type: string?
  inputBinding:
    prefix: --strip-suffix
- id: in_prefix
  doc: "Add this prefix to read names. Use {name} to insert\nthe name of the matching\
    \ adapter."
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: Add this suffix to read names; can also include {name}
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_zero_cap
  doc: Change negative quality values to zero.
  type: boolean?
  inputBinding:
    prefix: --zero-cap
- id: in_discard_reads_shorter
  doc: "[:LEN2], --minimum-length LEN[:LEN2]\nDiscard reads shorter than LEN. Default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: -m
- id: in_discard_reads_longer
  doc: "[:LEN2], --maximum-length LEN[:LEN2]\nDiscard reads longer than LEN. Default:\
    \ no limit"
  type: long?
  inputBinding:
    prefix: -M
- id: in_max_n
  doc: "Discard reads with more than COUNT 'N' bases. If COUNT\nis a number between\
    \ 0 and 1, it is interpreted as a\nfraction of the read length."
  type: long?
  inputBinding:
    prefix: --max-n
- id: in_max_expected_errors
  doc: "Discard reads whose expected number of errors\n(computed from quality values)\
    \ exceeds ERRORS."
  type: long?
  inputBinding:
    prefix: --max-expected-errors
- id: in_discard_trimmed
  doc: "Discard reads that contain an adapter. Use also -O to\navoid discarding too\
    \ many randomly matching reads."
  type: boolean?
  inputBinding:
    prefix: --discard-trimmed
- id: in_discard_untrimmed
  doc: Discard reads that do not contain an adapter.
  type: boolean?
  inputBinding:
    prefix: --discard-untrimmed
- id: in_discard_casa_va
  doc: "Discard reads that did not pass CASAVA filtering\n(header has :Y:)."
  type: boolean?
  inputBinding:
    prefix: --discard-casava
- id: in_quiet
  doc: Print only error messages.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_report
  doc: "Which type of report to print: 'full' or 'minimal'.\nDefault: full"
  type: string?
  inputBinding:
    prefix: --report
- id: in_output
  doc: "Write trimmed reads to FILE. FASTQ or FASTA format is\nchosen depending on\
    \ input. Summary report is sent to\nstandard output. Use '{name}' for demultiplexing\
    \ (see\ndocs). Default: write to standard output"
  type: File?
  inputBinding:
    prefix: --output
- id: in_fast_a
  doc: Output FASTA to standard output even on FASTQ input.
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_use_compression_level
  doc: "Use compression level 1 for gzipped output files\n(faster, but uses more space)"
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_info_file
  doc: "Write information about each read and its adapter\nmatches into FILE. See\
    \ the documentation for the file\nformat."
  type: File?
  inputBinding:
    prefix: --info-file
- id: in_rest_file
  doc: "When the adapter matches in the middle of a read,\nwrite the rest (after the\
    \ adapter) to FILE."
  type: File?
  inputBinding:
    prefix: --rest-file
- id: in_wildcard_file
  doc: "When the adapter has N wildcard bases, write adapter\nbases matching wildcard\
    \ positions to FILE. (Inaccurate\nwith indels.)"
  type: File?
  inputBinding:
    prefix: --wildcard-file
- id: in_too_short_output
  doc: "Write reads that are too short (according to length\nspecified by -m) to FILE.\
    \ Default: discard reads"
  type: File?
  inputBinding:
    prefix: --too-short-output
- id: in_too_long_output
  doc: "Write reads that are too long (according to length\nspecified by -M) to FILE.\
    \ Default: discard reads"
  type: File?
  inputBinding:
    prefix: --too-long-output
- id: in_untrimmed_output
  doc: "Write reads that do not contain any adapter to FILE.\nDefault: output to same\
    \ file as trimmed reads"
  type: File?
  inputBinding:
    prefix: --untrimmed-output
- id: in_a
  doc: 3' adapter to be removed from second read in a pair.
  type: long?
  inputBinding:
    prefix: -A
- id: in_g
  doc: 5' adapter to be removed from second read in a pair.
  type: long?
  inputBinding:
    prefix: -G
- id: in_b
  doc: 5'/3 adapter to be removed from second read in a pair.
  type: long?
  inputBinding:
    prefix: -B
- id: in_remove_length_bases
  doc: Remove LENGTH bases from second read in a pair.
  type: long?
  inputBinding:
    prefix: -U
- id: in_paired_output
  doc: Write second read in a pair to FILE.
  type: File?
  inputBinding:
    prefix: --paired-output
- id: in_pair_adapters
  doc: "Treat adapters given with -a/-A etc. as pairs. Either\nboth or none are removed\
    \ from each read pair."
  type: boolean?
  inputBinding:
    prefix: --pair-adapters
- id: in_pair_filter
  doc: "(any|both|first)\nWhich of the reads in a paired-end read have to match\n\
    the filtering criterion in order for the pair to be\nfiltered. Default: any"
  type: boolean?
  inputBinding:
    prefix: --pair-filter
- id: in_interleaved
  doc: Read and/or write interleaved paired-end reads.
  type: boolean?
  inputBinding:
    prefix: --interleaved
- id: in_untrimmed_paired_output
  doc: "Write second read in a pair to this FILE when no\nadapter was found. Use with\
    \ --untrimmed-output.\nDefault: output to same file as trimmed reads"
  type: File?
  inputBinding:
    prefix: --untrimmed-paired-output
- id: in_too_short_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo short. Use also --too-short-output."
  type: File?
  inputBinding:
    prefix: --too-short-paired-output
- id: in_too_long_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo long. Use also --too-long-output.\n"
  type: File?
  inputBinding:
    prefix: --too-long-paired-output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_untrimmed_output
  doc: "Write reads that do not contain any adapter to FILE.\nDefault: output to same\
    \ file as trimmed reads"
  type: File?
  outputBinding:
    glob: $(inputs.in_untrimmed_output)
- id: out_untrimmed_paired_output
  doc: "Write second read in a pair to this FILE when no\nadapter was found. Use with\
    \ --untrimmed-output.\nDefault: output to same file as trimmed reads"
  type: File?
  outputBinding:
    glob: $(inputs.in_untrimmed_paired_output)
- id: out_too_short_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo short. Use also --too-short-output."
  type: File?
  outputBinding:
    glob: $(inputs.in_too_short_paired_output)
- id: out_too_long_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo long. Use also --too-long-output.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_too_long_paired_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cutadapt
