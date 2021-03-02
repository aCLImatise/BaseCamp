class: CommandLineTool
id: bowtie2.cwl
inputs:
- id: in_query_input_files_fastq
  doc: query input files are FASTQ .fq/.fastq (default)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_tab_five
  doc: query input files are TAB5 .tab5
  type: boolean?
  inputBinding:
    prefix: --tab5
- id: in_tab_six
  doc: query input files are TAB6 .tab6
  type: boolean?
  inputBinding:
    prefix: --tab6
- id: in_q_seq
  doc: query input files are in Illumina's qseq format
  type: boolean?
  inputBinding:
    prefix: --qseq
- id: in_query_input_files_multifasta
  doc: query input files are (multi-)FASTA .fa/.mfa
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_query_input_files_raw
  doc: query input files are raw one-sequence-per-line
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_intiint_query_input
  doc: ":<int>,i:<int> query input files are continuous FASTA where reads\nare substrings\
    \ (k-mers) extracted from a FASTA file <s>\nand aligned at offsets 1, 1+i, 1+2i\
    \ ... end of reference"
  type: long?
  inputBinding:
    prefix: -F
- id: in_m_m_r
  doc: <m1>, <m2>, <r> are sequences themselves, not files
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_skip
  doc: skip the first <int> reads/pairs in the input (none)
  type: long?
  inputBinding:
    prefix: --skip
- id: in_up_to
  doc: stop after first <int> reads/pairs (no limit)
  type: long?
  inputBinding:
    prefix: --upto
- id: in_trim_five
  doc: trim <int> bases from 5'/left end of reads (0)
  type: long?
  inputBinding:
    prefix: --trim5
- id: in_trim_three
  doc: trim <int> bases from 3'/right end of reads (0)
  type: long?
  inputBinding:
    prefix: --trim3
- id: in_trim_to
  doc: "[3:|5:]<int> trim reads exceeding <int> bases from either 3' or 5' end\nIf\
    \ the read end is not specified then it defaults to 3 (0)"
  type: boolean?
  inputBinding:
    prefix: --trim-to
- id: in_phred_three_three
  doc: qualities are Phred+33 (default)
  type: boolean?
  inputBinding:
    prefix: --phred33
- id: in_phred_six_four
  doc: qualities are Phred+64
  type: boolean?
  inputBinding:
    prefix: --phred64
- id: in_int_quals
  doc: qualities encoded as space-delimited integers
  type: boolean?
  inputBinding:
    prefix: --int-quals
- id: in_sensitive
  doc: ',1,1.15 (default)'
  type: long?
  inputBinding:
    prefix: --sensitive
- id: in_n_ceil
  doc: 'func for max # non-A/C/G/Ts permitted in aln (L,0,0.15)'
  type: long?
  inputBinding:
    prefix: --n-ceil
- id: in_d_pad
  doc: include <int> extra ref chars on sides of DP table (15)
  type: long?
  inputBinding:
    prefix: --dpad
- id: in_g_bar
  doc: disallow gaps within <int> nucs of read extremes (4)
  type: long?
  inputBinding:
    prefix: --gbar
- id: in_ignore_quals
  doc: treat all quality values as 30 on Phred scale (off)
  type: boolean?
  inputBinding:
    prefix: --ignore-quals
- id: in_no_fw
  doc: do not align forward (original) version of read (off)
  type: boolean?
  inputBinding:
    prefix: --nofw
- id: in_norc
  doc: do not align reverse-complement version of read (off)
  type: boolean?
  inputBinding:
    prefix: --norc
- id: in_no_one_mm_up_front
  doc: "do not allow 1 mismatch alignments before attempting to\nscan for the optimal\
    \ seeded alignments"
  type: boolean?
  inputBinding:
    prefix: --no-1mm-upfront
- id: in_end_to_end
  doc: entire read must align; no clipping (on)
  type: boolean?
  inputBinding:
    prefix: --end-to-end
- id: in_ma
  doc: match bonus (0 for --end-to-end, 2 for --local)
  type: long?
  inputBinding:
    prefix: --ma
- id: in_mp
  doc: max penalty for mismatch; lower qual = lower penalty (6)
  type: long?
  inputBinding:
    prefix: --mp
- id: in_np
  doc: penalty for non-A/C/G/Ts in read/ref (1)
  type: long?
  inputBinding:
    prefix: --np
- id: in_rdg
  doc: ',<int>  read gap open, extend penalties (5,3)'
  type: long?
  inputBinding:
    prefix: --rdg
- id: in_rfg
  doc: ',<int>  reference gap open, extend penalties (5,3)'
  type: long?
  inputBinding:
    prefix: --rfg
- id: in_score_min
  doc: "min acceptable alignment score w/r/t read length\n(G,20,8 for local, L,-0.6,-0.6\
    \ for end-to-end)"
  type: long?
  inputBinding:
    prefix: --score-min
- id: in_mini_ns
  doc: minimum fragment length (0)
  type: long?
  inputBinding:
    prefix: --minins
- id: in_max_ins
  doc: maximum fragment length (500)
  type: long?
  inputBinding:
    prefix: --maxins
- id: in_fr
  doc: align fw/rev, rev/fw, fw/fw (--fr)
  type: string?
  inputBinding:
    prefix: --fr
- id: in_no_mixed
  doc: suppress unpaired alignments for paired reads
  type: boolean?
  inputBinding:
    prefix: --no-mixed
- id: in_no_discordant
  doc: suppress discordant alignments for paired reads
  type: boolean?
  inputBinding:
    prefix: --no-discordant
- id: in_dovetail
  doc: concordant when mates extend past each other
  type: boolean?
  inputBinding:
    prefix: --dovetail
- id: in_no_contain
  doc: not concordant when one mate alignment contains other
  type: boolean?
  inputBinding:
    prefix: --no-contain
- id: in_no_overlap
  doc: not concordant when mates overlap at all
  type: boolean?
  inputBinding:
    prefix: --no-overlap
- id: in_align_paired_reads
  doc: "Bowtie2 will, by default, attempt to align unpaired BAM reads.\nUse this option\
    \ to align paired-end reads instead."
  type: boolean?
  inputBinding:
    prefix: --align-paired-reads
- id: in_preserve_tags
  doc: "Preserve tags from the original BAM record by\nappending them to the end of\
    \ the corresponding SAM output."
  type: boolean?
  inputBinding:
    prefix: --preserve-tags
- id: in_time
  doc: print wall-clock time taken by search phases
  type: boolean?
  inputBinding:
    prefix: --time
- id: in_un
  doc: write unpaired reads that didn't align to <path>
  type: File?
  inputBinding:
    prefix: --un
- id: in_al
  doc: write unpaired reads that aligned at least once to <path>
  type: File?
  inputBinding:
    prefix: --al
- id: in_un_conc
  doc: write pairs that didn't align concordantly to <path>
  type: File?
  inputBinding:
    prefix: --un-conc
- id: in_al_conc
  doc: "write pairs that aligned concordantly at least once to <path>\n(Note: for\
    \ --un, --al, --un-conc, or --al-conc, add '-gz' to the option name, e.g.\n--un-gz\
    \ <path>, to gzip compress output, or add '-bz2' to bzip2 compress output.)"
  type: File?
  inputBinding:
    prefix: --al-conc
- id: in_quiet
  doc: print nothing to stderr except serious errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_met_file
  doc: send metrics to file at <path> (off)
  type: File?
  inputBinding:
    prefix: --met-file
- id: in_met_stderr
  doc: send metrics to stderr (off)
  type: boolean?
  inputBinding:
    prefix: --met-stderr
- id: in_met
  doc: report internal counters & metrics every <int> secs (1)
  type: long?
  inputBinding:
    prefix: --met
- id: in_no_unal
  doc: suppress SAM records for unaligned reads
  type: boolean?
  inputBinding:
    prefix: --no-unal
- id: in_no_head
  doc: suppress header lines, i.e. lines starting with @
  type: boolean?
  inputBinding:
    prefix: --no-head
- id: in_no_sq
  doc: suppress @SQ header lines
  type: boolean?
  inputBinding:
    prefix: --no-sq
- id: in_rg_id
  doc: 'set read group id, reflected in @RG line and RG:Z: opt field'
  type: string?
  inputBinding:
    prefix: --rg-id
- id: in_rg
  doc: "add <text> (\"lab:value\") to @RG line of SAM header.\nNote: @RG line only\
    \ printed when --rg-id is set."
  type: string?
  inputBinding:
    prefix: --rg
- id: in_omit_sec_seq
  doc: put '*' in SEQ and QUAL fields for secondary alignments.
  type: boolean?
  inputBinding:
    prefix: --omit-sec-seq
- id: in_sam_no_qname_trunc
  doc: "Suppress standard behavior of truncating readname at first whitespace\nat\
    \ the expense of generating non-standard SAM."
  type: boolean?
  inputBinding:
    prefix: --sam-no-qname-trunc
- id: in_xeq
  doc: Use '='/'X', instead of 'M,' to specify matches/mismatches in SAM record.
  type: boolean?
  inputBinding:
    prefix: --xeq
- id: in_soft_clipped_unmapped_tlen
  doc: Exclude soft-clipped bases when reporting TLEN
  type: boolean?
  inputBinding:
    prefix: --soft-clipped-unmapped-tlen
- id: in_sam_append_comment
  doc: Append FASTA/FASTQ comment to SAM record
  type: boolean?
  inputBinding:
    prefix: --sam-append-comment
- id: in_threads
  doc: number of alignment threads to launch (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_reorder
  doc: force SAM output order to match order of input reads
  type: boolean?
  inputBinding:
    prefix: --reorder
- id: in_mm
  doc: use memory-mapped I/O for index; many 'bowtie's can share
  type: boolean?
  inputBinding:
    prefix: --mm
- id: in_qc_filter
  doc: filter out reads that are bad according to QSEQ filter
  type: boolean?
  inputBinding:
    prefix: --qc-filter
- id: in_seed
  doc: seed for random number generator (0)
  type: long?
  inputBinding:
    prefix: --seed
- id: in_non_deterministic
  doc: seed rand. gen. arbitrarily instead of using read attributes
  type: boolean?
  inputBinding:
    prefix: --non-deterministic
- id: in_could
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_note
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_68
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bt_two_idx
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_i
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_m_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_var_73
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_74
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_many
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_gzip
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_times_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_e_dot_gdot
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_88
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_interleaved
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unaligned
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unpaired
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_93
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_paired_end
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_reads_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sorted
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_al_conc
  doc: "write pairs that aligned concordantly at least once to <path>\n(Note: for\
    \ --un, --al, --un-conc, or --al-conc, add '-gz' to the option name, e.g.\n--un-gz\
    \ <path>, to gzip compress output, or add '-bz2' to bzip2 compress output.)"
  type: File?
  outputBinding:
    glob: $(inputs.in_al_conc)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bowtie2:2.4.2--py38h1c8e9b9_1
cwlVersion: v1.1
baseCommand:
- bowtie2
