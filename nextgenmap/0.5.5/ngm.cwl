class: CommandLineTool
id: ngm.cwl
inputs:
- id: p
  doc: '/--paired                   Input data is paired end. NOT required if -1/-2
    are used. (default: off)'
  type: boolean
  inputBinding:
    prefix: -p
- id: i
  doc: '/--min-insert-size          The min insert size for paired end alignments
    (default: 0)'
  type: boolean
  inputBinding:
    prefix: -I
- id: x
  doc: '/--max-insert-size          The max insert size for paired end alignments
    (default: 1000)'
  type: boolean
  inputBinding:
    prefix: -X
- id: max_read_length
  doc: 'Length of longest read in input. (default: estimated from data)'
  type: long
  inputBinding:
    prefix: --max-read-length
- id: force_r_length_check
  doc: 'Forces NextgenMap to run through all reads to find the max. read length. (default:
    off)'
  type: boolean
  inputBinding:
    prefix: --force-rlength-check
- id: o
  doc: /--output <path>            Path to output file.
  type: boolean
  inputBinding:
    prefix: -o
- id: n
  doc: '/--topn                     Prints the <n> best alignments sorted by alignment
    score (default: 1)'
  type: boolean
  inputBinding:
    prefix: -n
- id: strata
  doc: Only  output  the  highest  scoring  mappings for any  given  read,  up  to
    <n> mappings per read. If a read has more than <n> mappings with the same score,
    it is discarded and reported as unmapped.
  type: boolean
  inputBinding:
    prefix: --strata
- id: b
  doc: /--bam                      Output BAM instead of SAM.
  type: boolean
  inputBinding:
    prefix: -b
- id: keep_tags
  doc: 'Copy BAM/SAM tags present in input file to output file (default: off)'
  type: boolean
  inputBinding:
    prefix: --keep-tags
- id: no_unal
  doc: Don't print unaligned reads to output file.
  type: boolean
  inputBinding:
    prefix: --no-unal
- id: hard_clip
  doc: Hard instead of soft clipping in SAM output
  type: boolean
  inputBinding:
    prefix: --hard-clip
- id: silent_clip
  doc: Hard clip reads but don't add clipping information to CIGAR string
  type: boolean
  inputBinding:
    prefix: --silent-clip
- id: rg_id
  doc: 'Adds RG:Z:<string> to all alignments in SAM/BAM '
  type: string
  inputBinding:
    prefix: --rg-id
- id: rg_sm
  doc: 'RG header: Sample'
  type: string
  inputBinding:
    prefix: --rg-sm
- id: rg_lb
  doc: 'RG header: Library'
  type: string
  inputBinding:
    prefix: --rg-lb
- id: rg_pl
  doc: 'RG header: Platform'
  type: string
  inputBinding:
    prefix: --rg-pl
- id: rg_ds
  doc: 'RG header: Description'
  type: string
  inputBinding:
    prefix: --rg-ds
- id: rg_dt
  doc: 'RG header: Date (format: YYYY-MM-DD)'
  type: string
  inputBinding:
    prefix: --rg-dt
- id: rg_pu
  doc: 'RG header: Platform unit'
  type: string
  inputBinding:
    prefix: --rg-pu
- id: rg_pi
  doc: 'RG header: Median insert size'
  type: string
  inputBinding:
    prefix: --rg-pi
- id: rg_pg
  doc: 'RG header: Programs'
  type: string
  inputBinding:
    prefix: --rg-pg
- id: rg_cn
  doc: 'RG header: sequencing center'
  type: string
  inputBinding:
    prefix: --rg-cn
- id: rg_fo
  doc: 'RG header: Flow order'
  type: string
  inputBinding:
    prefix: --rg-fo
- id: rg_ks
  doc: 'RG header: Key sequence'
  type: string
  inputBinding:
    prefix: --rg-ks
- id: d
  doc: '/--pe-delimiter <char>      Character used in suffix that identifies mate
    1 and 2. E.g. /1 and /2. This suffixes will be removed to ensure proper SAM output
    (default: /)'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: /--threads <int>            Number of candidate search threads
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: '/--sensitivity <float>      A value between 0 and 1 that determines the number
    of candidate mapping regions that will be evaluated with an sequence alignment.
    0: all CMR(s) will be evaluated 1: only the best CMR(s) will be evaluated Higher
    values will reduce the runtime but also have a negative effect on mapping sensitivity.
    (default: estimated from input data)'
  type: boolean
  inputBinding:
    prefix: -s
- id: very_fast
  doc: 'Scale estimated sensitivity: Much faster, much less accurate'
  type: boolean
  inputBinding:
    prefix: --very-fast
- id: fast
  doc: 'Scale estimated sensitivity: Faster, less accurate'
  type: boolean
  inputBinding:
    prefix: --fast
- id: sensitive
  doc: 'Scale estimated sensitivity: More accurate, slower'
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: very_sensitive
  doc: 'Scale estimated sensitivity: Much more accurate, much slower'
  type: boolean
  inputBinding:
    prefix: --very-sensitive
- id: i
  doc: '/--min-identity <0-1>       All reads mapped with an identity lower than this
    threshold will be reported as unmapped (default: 0.65)'
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: '/--min-residues <int/float> All reads mapped with lower than <int> or <float>
    * read length residues will be reported as unmapped. (default: 0.5)'
  type: boolean
  inputBinding:
    prefix: -R
- id: q
  doc: '/--min-mq <int>             All reads mapped with lower than <int> mapping
    quality will be reported as unmapped. (default: 0)'
  type: boolean
  inputBinding:
    prefix: -Q
- id: g
  doc: '/--gpu [int,...]            Use GPU(s) for alignment computation NOTE: GPU
    Ids are zero-based! -g or --gpu to use GPU -g 1 or --gpu 1 to use GPU 1 -g 0,1
    or --gpu 0,1 to use GPU 0 and 1 If -g/--gpu is omitted, alignments will be computed
    on the CPU (default)'
  type: boolean
  inputBinding:
    prefix: -g
- id: bs_mapping
  doc: Enables bisulfite mapping. For bs-mapping, kmer-skip will be applied to the
    reads instead of the reference sequence.
  type: boolean
  inputBinding:
    prefix: --bs-mapping
- id: bs_cut_off
  doc: 'Max. number of Ts in a k-mer. All k-mers were the number of Ts is higher than
    <int> are ignored (default: 8)'
  type: long
  inputBinding:
    prefix: --bs-cutoff
- id: k
  doc: '/--kmer [10-14]             Kmer length in bases. (default: 13)'
  type: boolean
  inputBinding:
    prefix: -k
- id: km_er_skip
  doc: 'Number of k-mers to skip when building the lookup table from the reference(default:
    2)'
  type: long
  inputBinding:
    prefix: --kmer-skip
- id: km_er_min
  doc: 'Minimal number of k-mer hits required to consider a region a CMR. (default:
    0)'
  type: long
  inputBinding:
    prefix: --kmer-min
- id: max_cmrs
  doc: 'Reads that have more than <int> CMRs are ignored. (default: infinite)'
  type: long
  inputBinding:
    prefix: --max-cmrs
- id: skip_save
  doc: Don't save index to disk. Saves disk space but increases runtime for larger
    genomes.
  type: boolean
  inputBinding:
    prefix: --skip-save
- id: l
  doc: '/--local                    Perform local alignment. Ends might get clipped.
    (default: on)'
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: '/--end-to-end               Perform end-to-end alignment. No clipping. (default:
    off)'
  type: boolean
  inputBinding:
    prefix: -e
- id: affine
  doc: 'Use alignment algorithms that support affine gap costs. This will give you
    better alignments for longer indels but will also increase the runtime. (default:
    off)'
  type: boolean
  inputBinding:
    prefix: --affine
- id: c
  doc: '/--max-consec-indels <int>  Maximum number of consecutive indels allowed.
    (default: computed based on avg. read length)'
  type: boolean
  inputBinding:
    prefix: -C
- id: fast_pairing
  doc: Mates are mapped individually. If the best alignments for the mates give a
    proper pair they are marked as paired in the output. If not they are reported
    as broken pair.
  type: boolean
  inputBinding:
    prefix: --fast-pairing
- id: pair_score_cut_off
  doc: '<0-1>     To find the best pairing all alignments of a read that have a score
    in the range of:  [top score * pair-score-cutoff; top score] are taken into account.'
  type: boolean
  inputBinding:
    prefix: --pair-score-cutoff
- id: skip_mate_check
  doc: "Don't check that both mates have the same name (default: off)"
  type: boolean
  inputBinding:
    prefix: --skip-mate-check
- id: match_bonus
  doc: 'Match score (default: 10, affine: 10, bs-mapping: 4)'
  type: long
  inputBinding:
    prefix: --match-bonus
- id: mismatch
  doc: '<int>      Mismatch penalty (default: 15, affine: 15, bs-mapping: 2)'
  type: string
  inputBinding:
    prefix: --mismatch
- id: gap_read_penalty
  doc: 'Penalty for a gap in the read (default: 20, affine: 33, bs-mapping: 10)'
  type: long
  inputBinding:
    prefix: --gap-read-penalty
- id: gap_ref_penalty
  doc: 'Penalty for a gap in the reference (default: 20, affine: 33, bs-mapping: 10)'
  type: long
  inputBinding:
    prefix: --gap-ref-penalty
- id: gap_extend_penalty
  doc: 'Penalty for extending a gap (default: 20, affine: 3, bs-mapping: 10)'
  type: long
  inputBinding:
    prefix: --gap-extend-penalty
- id: match_bonus_tt
  doc: 'Only for bs-mapping (default: 4)'
  type: long
  inputBinding:
    prefix: --match-bonus-tt
- id: match_bonus_tc
  doc: 'Only for bs-mapping (default: 4)'
  type: long
  inputBinding:
    prefix: --match-bonus-tc
- id: bin_size
  doc: 'Sets the size of the grid NextgenMap uses during CMR search to: 2^n (default:
    2) '
  type: string
  inputBinding:
    prefix: --bin-size
- id: update_check
  doc: Perform an online check for a newer version of NGM
  type: boolean
  inputBinding:
    prefix: --update-check
- id: color
  doc: 'Colored text output (default: off)'
  type: boolean
  inputBinding:
    prefix: --color
- id: no_progress
  doc: "Don't print progress info while mapping (default: off)"
  type: boolean
  inputBinding:
    prefix: --no-progress
outputs: []
cwlVersion: v1.1
baseCommand:
- ngm
