class: CommandLineTool
id: bowtie.cwl
inputs:
- id: in_query_input_files_fastq
  doc: query input files are FASTQ .fq/.fastq (default)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_query_input_files_multifasta
  doc: query input files are (multi-)FASTA .fa/.mfa
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_intiint_query_input
  doc: ":<int>,i:<int> query input files are continuous FASTA where reads\nare substrings\
    \ (k-mers) extracted from a FASTA file <s>\nand aligned at offsets 1, 1+i, 1+2i\
    \ ... end of reference"
  type: long?
  inputBinding:
    prefix: -F
- id: in_query_input_files_raw
  doc: query input files are raw one-sequence-per-line
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_query_sequences_given
  doc: query sequences given on cmd line (as <mates>, <singles>)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_quals
  doc: QV file(s) corresponding to CSFASTA inputs; use with -f -C
  type: File?
  inputBinding:
    prefix: --quals
- id: in_q_one
  doc: same as -Q, but for mate files 1 and 2 respectively
  type: File?
  inputBinding:
    prefix: --Q1
- id: in_skip
  doc: skip the first <int> reads/pairs in the input
  type: long?
  inputBinding:
    prefix: --skip
- id: in_q_up_to
  doc: stop after first <int> reads/pairs (excl. skipped reads)
  type: long?
  inputBinding:
    prefix: --qupto
- id: in_trim_five
  doc: trim <int> bases from 5' (left) end of reads
  type: long?
  inputBinding:
    prefix: --trim5
- id: in_trim_three
  doc: trim <int> bases from 3' (right) end of reads
  type: long?
  inputBinding:
    prefix: --trim3
- id: in_phred_three_three_quals
  doc: input quals are Phred+33 (default)
  type: boolean?
  inputBinding:
    prefix: --phred33-quals
- id: in_phred_six_four_quals
  doc: input quals are Phred+64 (same as --solexa1.3-quals)
  type: boolean?
  inputBinding:
    prefix: --phred64-quals
- id: in_solexa_quals
  doc: input quals are from GA Pipeline ver. < 1.3
  type: boolean?
  inputBinding:
    prefix: --solexa-quals
- id: in_solexa_one_dot_three_quals
  doc: input quals are from GA Pipeline ver. >= 1.3
  type: boolean?
  inputBinding:
    prefix: --solexa1.3-quals
- id: in_integer_quals
  doc: qualities are given as space-separated integers (not ASCII)
  type: boolean?
  inputBinding:
    prefix: --integer-quals
- id: in_large_index
  doc: force usage of a 'large' index, even if a small one is present
  type: boolean?
  inputBinding:
    prefix: --large-index
- id: in_report_endtoend_hits
  doc: report end-to-end hits w/ <=v mismatches; ignore qualities
  type: long?
  inputBinding:
    prefix: -v
- id: in_maq_err
  doc: 'max sum of mismatch quals across alignment for -n (def: 70)'
  type: long?
  inputBinding:
    prefix: --maqerr
- id: in_seed_len
  doc: 'seed length for -n (default: 28)'
  type: long?
  inputBinding:
    prefix: --seedlen
- id: in_no_maq_round
  doc: disable Maq-like quality rounding for -n (nearest 10 <= 30)
  type: boolean?
  inputBinding:
    prefix: --nomaqround
- id: in_mini_ns
  doc: 'minimum insert size for paired-end alignment (default: 0)'
  type: long?
  inputBinding:
    prefix: --minins
- id: in_max_ins
  doc: 'maximum insert size for paired-end alignment (default: 250)'
  type: long?
  inputBinding:
    prefix: --maxins
- id: in_fr
  doc: 'align fw/rev, rev/fw, fw/fw (default: --fr)'
  type: string?
  inputBinding:
    prefix: --fr
- id: in_no_fw
  doc: do not align to forward/reverse-complement reference strand
  type: boolean?
  inputBinding:
    prefix: --nofw
- id: in_max_bts
  doc: 'max # backtracks for -n 2/3 (default: 125, 800 for --best)'
  type: long?
  inputBinding:
    prefix: --maxbts
- id: in_pair_tries
  doc: 'max # attempts to find mate for anchor hit (default: 100)'
  type: long?
  inputBinding:
    prefix: --pairtries
- id: in_try_hard
  doc: try hard to find valid alignments, at the expense of speed
  type: boolean?
  inputBinding:
    prefix: --tryhard
- id: in_chunk_mbs
  doc: 'max megabytes of RAM for best-first search frames (def: 64)'
  type: long?
  inputBinding:
    prefix: --chunkmbs
- id: in_reads_per_batch
  doc: '# of reads to read from input file at once (default: 16)'
  type: boolean?
  inputBinding:
    prefix: --reads-per-batch
- id: in_report_int_alignments
  doc: 'report up to <int> good alignments per read (default: 1)'
  type: long?
  inputBinding:
    prefix: -k
- id: in_all
  doc: report all alignments per read (much slower than low -k)
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_suppress_alignments_exist
  doc: 'suppress all alignments if > <int> exist (def: no limit)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_m_reports_random
  doc: like -m, but reports 1 random hit (MAPQ=0); requires --best
  type: long?
  inputBinding:
    prefix: -M
- id: in_best
  doc: hits guaranteed best stratum; ties broken by quality
  type: boolean?
  inputBinding:
    prefix: --best
- id: in_strata
  doc: hits in sub-optimal strata aren't reported (requires --best)
  type: boolean?
  inputBinding:
    prefix: --strata
- id: in_time
  doc: print wall-clock time taken by search phases
  type: boolean?
  inputBinding:
    prefix: --time
- id: in_off_base
  doc: 'leftmost ref offset = <int> in bowtie output (default: 0)'
  type: long?
  inputBinding:
    prefix: --offbase
- id: in_quiet
  doc: print nothing but the alignments
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_ref_idx
  doc: refer to ref. seqs by 0-based index rather than name
  type: boolean?
  inputBinding:
    prefix: --refidx
- id: in_al
  doc: write aligned reads/pairs to file(s) <fname>
  type: File?
  inputBinding:
    prefix: --al
- id: in_un
  doc: write unaligned reads/pairs to file(s) <fname>
  type: File?
  inputBinding:
    prefix: --un
- id: in_no_unal
  doc: suppress SAM records for unaligned reads
  type: boolean?
  inputBinding:
    prefix: --no-unal
- id: in_max
  doc: write reads/pairs over -m limit to file(s) <fname>
  type: long?
  inputBinding:
    prefix: --max
- id: in_suppress
  doc: suppresses given columns (comma-delim'ed) in default output
  type: string?
  inputBinding:
    prefix: --suppress
- id: in_full_ref
  doc: 'write entire ref name (default: only up to 1st space)'
  type: boolean?
  inputBinding:
    prefix: --fullref
- id: in_sam
  doc: write hits in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_mapq
  doc: default mapping quality (MAPQ) to print for SAM alignments
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_sam_no_head
  doc: supppress header lines (starting with @) for SAM output
  type: boolean?
  inputBinding:
    prefix: --sam-nohead
- id: in_sam_no_sq
  doc: supppress @SQ header lines for SAM output
  type: boolean?
  inputBinding:
    prefix: --sam-nosq
- id: in_sam_rg
  doc: add <text> (usually "lab=value") to @RG line of SAM header
  type: string?
  inputBinding:
    prefix: --sam-RG
- id: in_off_rate
  doc: override offrate of index; must be >= index's offrate
  type: long?
  inputBinding:
    prefix: --offrate
- id: in_threads
  doc: 'number of alignment threads to launch (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_mm
  doc: use memory-mapped I/O for index; many 'bowtie's can share
  type: boolean?
  inputBinding:
    prefix: --mm
- id: in_shmem
  doc: use shared mem for index; many 'bowtie's can share
  type: boolean?
  inputBinding:
    prefix: --shmem
- id: in_seed
  doc: seed for random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_verbose
  doc: verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_or
  doc: '-n/--seedmms <int> max mismatches in seed (can be 0-3, default: -n 2)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bowtie:1.3.0--py38hed8969a_1
cwlVersion: v1.1
baseCommand:
- bowtie
