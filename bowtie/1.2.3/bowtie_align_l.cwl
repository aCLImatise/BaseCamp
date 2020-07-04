class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bowtie_align_l.cwl
inputs:
- id: query_input_files_fastq
  doc: query input files are FASTQ .fq/.fastq (default)
  type: boolean
  inputBinding:
    prefix: -q
- id: query_input_files_multifasta
  doc: query input files are (multi-)FASTA .fa/.mfa
  type: boolean
  inputBinding:
    prefix: -f
- id: intiint_query_input
  doc: :<int>,i:<int> query input files are continuous FASTA where reads are substrings
    (k-mers) extracted from a FASTA file <s> and aligned at offsets 1, 1+i, 1+2i ...
    end of reference
  type: string
  inputBinding:
    prefix: -F
- id: query_input_files_raw
  doc: query input files are raw one-sequence-per-line
  type: boolean
  inputBinding:
    prefix: -r
- id: query_sequences_given
  doc: query sequences given on cmd line (as <mates>, <singles>)
  type: boolean
  inputBinding:
    prefix: -c
- id: reads_index_colorspace
  doc: reads and index are in colorspace
  type: boolean
  inputBinding:
    prefix: -C
- id: q_slash_quals
  doc: QV file(s) corresponding to CSFASTA inputs; use with -f -C
  type: File
  inputBinding:
    prefix: -Q/--quals
- id: q_one_slash_q_two
  doc: same as -Q, but for mate files 1 and 2 respectively
  type: File
  inputBinding:
    prefix: --Q1/--Q2
- id: s_slash_skip
  doc: skip the first <int> reads/pairs in the input
  type: long
  inputBinding:
    prefix: -s/--skip
- id: us_lash_q_up_to
  doc: stop after first <int> reads/pairs (excl. skipped reads)
  type: long
  inputBinding:
    prefix: -u/--qupto
- id: five_slash_trim_five
  doc: trim <int> bases from 5' (left) end of reads
  type: long
  inputBinding:
    prefix: -5/--trim5
- id: three_slash_trim_three
  doc: trim <int> bases from 3' (right) end of reads
  type: long
  inputBinding:
    prefix: -3/--trim3
- id: phred_three_three_quals
  doc: input quals are Phred+33 (default)
  type: boolean
  inputBinding:
    prefix: --phred33-quals
- id: phred_six_four_quals
  doc: input quals are Phred+64 (same as --solexa1.3-quals)
  type: boolean
  inputBinding:
    prefix: --phred64-quals
- id: solexa_quals
  doc: input quals are from GA Pipeline ver. < 1.3
  type: boolean
  inputBinding:
    prefix: --solexa-quals
- id: solexa_one_dot_three_quals
  doc: input quals are from GA Pipeline ver. >= 1.3
  type: boolean
  inputBinding:
    prefix: --solexa1.3-quals
- id: integer_quals
  doc: qualities are given as space-separated integers (not ASCII)
  type: boolean
  inputBinding:
    prefix: --integer-quals
- id: n_slash_seed_mms
  doc: 'max mismatches in seed (can be 0-3, default: -n 2)'
  type: long
  inputBinding:
    prefix: -n/--seedmms
- id: e_slash_maq_err
  doc: 'max sum of mismatch quals across alignment for -n (def: 70)'
  type: long
  inputBinding:
    prefix: -e/--maqerr
- id: lslash_seed_len
  doc: 'seed length for -n (default: 28)'
  type: long
  inputBinding:
    prefix: -l/--seedlen
- id: no_maq_round
  doc: disable Maq-like quality rounding for -n (nearest 10 <= 30)
  type: boolean
  inputBinding:
    prefix: --nomaqround
- id: i_slash_mini_ns
  doc: 'minimum insert size for paired-end alignment (default: 0)'
  type: long
  inputBinding:
    prefix: -I/--minins
- id: x_slash_max_ins
  doc: 'maximum insert size for paired-end alignment (default: 250)'
  type: long
  inputBinding:
    prefix: -X/--maxins
- id: fr_slash_rf_slash_ff
  doc: '-1, -2 mates align fw/rev, rev/fw, fw/fw (default: --fr)'
  type: boolean
  inputBinding:
    prefix: --fr/--rf/--ff
- id: nofws_lash_norc
  doc: do not align to forward/reverse-complement reference strand
  type: boolean
  inputBinding:
    prefix: --nofw/--norc
- id: max_bts
  doc: 'max # backtracks for -n 2/3 (default: 125, 800 for --best)'
  type: long
  inputBinding:
    prefix: --maxbts
- id: pair_tries
  doc: 'max # attempts to find mate for anchor hit (default: 100)'
  type: long
  inputBinding:
    prefix: --pairtries
- id: y_slash_try_hard
  doc: try hard to find valid alignments, at the expense of speed
  type: boolean
  inputBinding:
    prefix: -y/--tryhard
- id: chunk_mbs
  doc: 'max megabytes of RAM for best-first search frames (def: 64)'
  type: long
  inputBinding:
    prefix: --chunkmbs
- id: reads_per_batch
  doc: '# of reads to read from input file at once (default: 16)'
  type: boolean
  inputBinding:
    prefix: --reads-per-batch
- id: report_int_alignments
  doc: 'report up to <int> good alignments per read (default: 1)'
  type: long
  inputBinding:
    prefix: -k
- id: a_slash_all
  doc: report all alignments per read (much slower than low -k)
  type: boolean
  inputBinding:
    prefix: -a/--all
- id: suppress_alignments_exist
  doc: 'suppress all alignments if > <int> exist (def: no limit)'
  type: long
  inputBinding:
    prefix: -m
- id: m_reports_random
  doc: like -m, but reports 1 random hit (MAPQ=0); requires --best
  type: long
  inputBinding:
    prefix: -M
- id: best
  doc: hits guaranteed best stratum; ties broken by quality
  type: boolean
  inputBinding:
    prefix: --best
- id: strata
  doc: hits in sub-optimal strata aren't reported (requires --best)
  type: boolean
  inputBinding:
    prefix: --strata
- id: t_slash_time
  doc: print wall-clock time taken by search phases
  type: boolean
  inputBinding:
    prefix: -t/--time
- id: b_slash_off_base
  doc: 'leftmost ref offset = <int> in bowtie output (default: 0)'
  type: long
  inputBinding:
    prefix: -B/--offbase
- id: quiet
  doc: print nothing but the alignments
  type: boolean
  inputBinding:
    prefix: --quiet
- id: ref_idx
  doc: refer to ref. seqs by 0-based index rather than name
  type: boolean
  inputBinding:
    prefix: --refidx
- id: al
  doc: write aligned reads/pairs to file(s) <fname>
  type: string
  inputBinding:
    prefix: --al
- id: un
  doc: write unaligned reads/pairs to file(s) <fname>
  type: string
  inputBinding:
    prefix: --un
- id: no_unal
  doc: suppress SAM records for unaligned reads
  type: boolean
  inputBinding:
    prefix: --no-unal
- id: max
  doc: write reads/pairs over -m limit to file(s) <fname>
  type: string
  inputBinding:
    prefix: --max
- id: suppress
  doc: suppresses given columns (comma-delim'ed) in default output
  type: string
  inputBinding:
    prefix: --suppress
- id: full_ref
  doc: 'write entire ref name (default: only up to 1st space)'
  type: boolean
  inputBinding:
    prefix: --fullref
- id: snp_frac
  doc: approx. fraction of SNP bases (e.g. 0.001); sets --snpphred
  type: string
  inputBinding:
    prefix: --snpfrac
- id: col_cseq
  doc: print aligned colorspace seqs as colors, not decoded bases
  type: boolean
  inputBinding:
    prefix: --col-cseq
- id: col_c_qual
  doc: print original colorspace quals, not decoded quals
  type: boolean
  inputBinding:
    prefix: --col-cqual
- id: col_keep_ends
  doc: keep nucleotides at extreme ends of decoded alignment
  type: boolean
  inputBinding:
    prefix: --col-keepends
- id: s_slash_sam
  doc: write hits in SAM format
  type: boolean
  inputBinding:
    prefix: -S/--sam
- id: mapq
  doc: default mapping quality (MAPQ) to print for SAM alignments
  type: long
  inputBinding:
    prefix: --mapq
- id: sam_no_head
  doc: supppress header lines (starting with @) for SAM output
  type: boolean
  inputBinding:
    prefix: --sam-nohead
- id: sam_no_sq
  doc: supppress @SQ header lines for SAM output
  type: boolean
  inputBinding:
    prefix: --sam-nosq
- id: sam_rg
  doc: add <text> (usually "lab=value") to @RG line of SAM header
  type: string
  inputBinding:
    prefix: --sam-RG
- id: oslash_off_rate
  doc: override offrate of index; must be >= index's offrate
  type: long
  inputBinding:
    prefix: -o/--offrate
- id: p_slash_threads
  doc: 'number of alignment threads to launch (default: 1)'
  type: long
  inputBinding:
    prefix: -p/--threads
- id: mm
  doc: use memory-mapped I/O for index; many 'bowtie's can share
  type: boolean
  inputBinding:
    prefix: --mm
- id: shmem
  doc: use shared mem for index; many 'bowtie's can share
  type: boolean
  inputBinding:
    prefix: --shmem
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: verbose
  doc: verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: h_slash_help
  doc: print this usage message
  type: boolean
  inputBinding:
    prefix: -h/--help
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie-align-l
