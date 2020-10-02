class: CommandLineTool
id: art_illumina.cwl
inputs:
- id: in__qprof_firstread
  doc: --qprof1   the first-read quality profile
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in__qprof_secondread
  doc: --qprof2   the second-read quality profile
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_amplicon
  doc: sequencing simulation
  type: string
  inputBinding:
    prefix: --amplicon
- id: in__rcount_number
  doc: --rcount   number of reads/read pairs to be generated per sequence/amplicon
    (not be used together with -f/--fcov)
  type: boolean
  inputBinding:
    prefix: -c
- id: in__i_d
  doc: --id       the prefix identification tag for read ID
  type: boolean
  inputBinding:
    prefix: -d
- id: in_err_free
  doc: "indicate to generate the zero sequencing errors SAM file as well the regular\
    \ one\nNOTE: the reads in the zero-error SAM file have the same alignment positions\n\
    as those in the regular SAM file, but have no sequencing errors"
  type: boolean
  inputBinding:
    prefix: --errfree
- id: in__fcov_fold
  doc: --fcov     the fold of read coverage to be simulated or number of reads/read
    pairs generated for each amplicon
  type: boolean
  inputBinding:
    prefix: -f
- id: in__filename_input
  doc: --in       the filename of input DNA/RNA reference
  type: boolean
  inputBinding:
    prefix: -i
- id: in_ins_rate
  doc: 'the first-read insertion rate (default: 0.00009)'
  type: boolean
  inputBinding:
    prefix: --insRate
- id: in_ins_rate_two
  doc: 'second-read insertion rate (default: 0.00015)'
  type: long
  inputBinding:
    prefix: --insRate2
- id: in_del_rate
  doc: 'the first-read deletion rate (default:  0.00011)'
  type: boolean
  inputBinding:
    prefix: --delRate
- id: in_del_rate_two
  doc: 'second-read deletion rate (default: 0.00023)'
  type: long
  inputBinding:
    prefix: --delRate2
- id: in__maximum_total
  doc: '--maxIndel the maximum total number of insertion and deletion per read (default:
    up to read length)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in__len_length
  doc: --len      the length of reads to be simulated
  type: boolean
  inputBinding:
    prefix: -l
- id: in__mflen_size
  doc: --mflen    the mean size of DNA/RNA fragments for paired-end simulations
  type: boolean
  inputBinding:
    prefix: -m
- id: in_mate_pair
  doc: a mate-pair read simulation
  type: string
  inputBinding:
    prefix: --matepair
- id: in_cigar_m
  doc: indicate to use CIGAR 'M' instead of '=/X' for alignment match/mismatch
  type: boolean
  inputBinding:
    prefix: --cigarM
- id: in_mask_n
  doc: "the cutoff frequency of 'N' in a window size of the read length for masking\
    \ genomic regions\nNOTE: default: '-nf 1' to mask all regions with 'N'. Use '-nf\
    \ 0' to turn off masking"
  type: boolean
  inputBinding:
    prefix: --maskN
- id: in_no_aln
  doc: do not output ALN alignment file
  type: File
  inputBinding:
    prefix: --noALN
- id: in__prefix_output
  doc: --out      the prefix of output filename
  type: File
  inputBinding:
    prefix: -o
- id: in__paired_indicate
  doc: "--paired   indicate a paired-end read simulation or to generate reads from\
    \ both ends of amplicons\nNOTE: art will automatically switch to a mate-pair simulation\
    \ if the given mean fragment size >= 2000"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_quiet_turn_end
  doc: --quiet    turn off end of run summary
  type: boolean
  inputBinding:
    prefix: -q
- id: in_min_q
  doc: the minimum base quality score
  type: boolean
  inputBinding:
    prefix: --minQ
- id: in_maxq
  doc: the maxiumum base quality score
  type: boolean
  inputBinding:
    prefix: --maxQ
- id: in_q_shift
  doc: the amount to shift every first-read quality score by
  type: boolean
  inputBinding:
    prefix: --qShift
- id: in_q_shift_two
  doc: "the amount to shift every second-read quality score by\nNOTE: For -qs/-qs2\
    \ option, a positive number will shift up quality scores (the max is 93)\nthat\
    \ reduce substitution sequencing errors and a negative number will shift down\n\
    quality scores that increase sequencing errors. If shifting scores by x, the error\n\
    rate will be 1/(10^(x/10)) of the default profile."
  type: boolean
  inputBinding:
    prefix: --qShift2
- id: in_rnd_seed
  doc: "the seed for random number generator (default: system time in second)\nNOTE:\
    \ using a fixed seed to generate two identical datasets from different runs"
  type: boolean
  inputBinding:
    prefix: --rndSeed
- id: in__sdev_deviation
  doc: --sdev     the standard deviation of DNA/RNA fragment size for paired-end simulations.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_sam_out
  doc: indicate to generate SAM alignment file
  type: boolean
  inputBinding:
    prefix: --samout
- id: in_sep_prof
  doc: indicate to use separate quality profiles for different bases (ATGC)
  type: boolean
  inputBinding:
    prefix: --sepProf
- id: in_seq_sys
  doc: "The name of Illumina sequencing system of the built-in profile used for simulation\n\
    NOTE: sequencing system ID names are:\nGA1 - GenomeAnalyzer I (36bp,44bp), GA2\
    \ - GenomeAnalyzer II (50bp, 75bp)\nHS10 - HiSeq 1000 (100bp),          HS20 -\
    \ HiSeq 2000 (100bp),      HS25 - HiSeq 2500 (125bp, 150bp)\nHSXn - HiSeqX PCR\
    \ free (150bp),     HSXt - HiSeqX TruSeq (150bp),   MinS - MiniSeq TruSeq (50bp)\n\
    MSv1 - MiSeq v1 (250bp),            MSv3 - MiSeq v3 (250bp),        NS50 - NextSeq500\
    \ v2 (75bp)"
  type: boolean
  inputBinding:
    prefix: --seqSys
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_aln
  doc: do not output ALN alignment file
  type: File
  outputBinding:
    glob: $(inputs.in_no_aln)
- id: out__prefix_output
  doc: --out      the prefix of output filename
  type: File
  outputBinding:
    glob: $(inputs.in__prefix_output)
cwlVersion: v1.1
baseCommand:
- art_illumina
