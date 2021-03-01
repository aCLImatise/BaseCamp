class: CommandLineTool
id: ngm_log.cwl
inputs:
- id: in_config
  doc: "Path to the config file. The config file contains\nall advanced options. If\
    \ this parameter is\nomitted, default values will be used."
  type: File?
  inputBinding:
    prefix: --config
- id: in_reference
  doc: "Path to the reference genome\n(format: FASTA, can be gzipped)."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_qry
  doc: "<path>              Path to the read file. If the file contains\ninterleaved\
    \ mates use -p/--paired."
  type: boolean?
  inputBinding:
    prefix: --qry
- id: in_qry_one
  doc: Path to the read file containing mates 1.
  type: File?
  inputBinding:
    prefix: --qry1
- id: in_qry_two
  doc: "Path to the read file containing mates 2.\nValid input formats are: FASTA/Q\
    \ (gzipped),\nSAM/BAM. If the query file(s) is/are omitted,\nNGM will only pre-process\
    \ the reference."
  type: File?
  inputBinding:
    prefix: --qry2
- id: in_paired
  doc: "Input data is paired end.\nNOT required if -1/-2 are used. (default: off)"
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_min_insert_size
  doc: "The min insert size for paired end alignments\n(default: 0)"
  type: boolean?
  inputBinding:
    prefix: --min-insert-size
- id: in_max_insert_size
  doc: "The max insert size for paired end alignments\n(default: 1000)"
  type: boolean?
  inputBinding:
    prefix: --max-insert-size
- id: in_max_read_length
  doc: "Length of longest read in input.\n(default: estimated from data)"
  type: long?
  inputBinding:
    prefix: --max-read-length
- id: in_force_r_length_check
  doc: "Forces NextgenMap to run through all reads to\nfind the max. read length.\
    \ (default: off)"
  type: boolean?
  inputBinding:
    prefix: --force-rlength-check
- id: in_output
  doc: Path to output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_top_n
  doc: "Prints the <n> best alignments sorted by\nalignment score (default: 1)"
  type: boolean?
  inputBinding:
    prefix: --topn
- id: in_strata
  doc: "Only  output  the  highest  scoring  mappings\nfor any  given  read,  up \
    \ to <n> mappings per\nread. If a read has more than <n> mappings with\nthe same\
    \ score, it is discarded and reported\nas unmapped."
  type: boolean?
  inputBinding:
    prefix: --strata
- id: in_bam
  doc: Output BAM instead of SAM.
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_keep_tags
  doc: "Copy BAM/SAM tags present in input file to\noutput file (default: off)"
  type: boolean?
  inputBinding:
    prefix: --keep-tags
- id: in_no_unal
  doc: Don't print unaligned reads to output file.
  type: File?
  inputBinding:
    prefix: --no-unal
- id: in_hard_clip
  doc: Hard instead of soft clipping in SAM output
  type: boolean?
  inputBinding:
    prefix: --hard-clip
- id: in_silent_clip
  doc: "Hard clip reads but don't add clipping\ninformation to CIGAR string"
  type: boolean?
  inputBinding:
    prefix: --silent-clip
- id: in_rg_id
  doc: Adds RG:Z:<string> to all alignments in SAM/BAM
  type: string?
  inputBinding:
    prefix: --rg-id
- id: in_rg_sm
  doc: 'RG header: Sample'
  type: string?
  inputBinding:
    prefix: --rg-sm
- id: in_rg_lb
  doc: 'RG header: Library'
  type: string?
  inputBinding:
    prefix: --rg-lb
- id: in_rg_pl
  doc: 'RG header: Platform'
  type: string?
  inputBinding:
    prefix: --rg-pl
- id: in_rg_ds
  doc: 'RG header: Description'
  type: string?
  inputBinding:
    prefix: --rg-ds
- id: in_rg_dt
  doc: 'RG header: Date (format: YYYY-MM-DD)'
  type: string?
  inputBinding:
    prefix: --rg-dt
- id: in_rg_pu
  doc: 'RG header: Platform unit'
  type: string?
  inputBinding:
    prefix: --rg-pu
- id: in_rg_pi
  doc: 'RG header: Median insert size'
  type: long?
  inputBinding:
    prefix: --rg-pi
- id: in_rg_pg
  doc: 'RG header: Programs'
  type: string?
  inputBinding:
    prefix: --rg-pg
- id: in_rg_cn
  doc: 'RG header: sequencing center'
  type: string?
  inputBinding:
    prefix: --rg-cn
- id: in_rg_fo
  doc: 'RG header: Flow order'
  type: string?
  inputBinding:
    prefix: --rg-fo
- id: in_rg_ks
  doc: 'RG header: Key sequence'
  type: string?
  inputBinding:
    prefix: --rg-ks
- id: in_pe_delimiter
  doc: "Character used in suffix that identifies mate 1\nand 2. E.g. /1 and /2. This\
    \ suffixes will be\nremoved to ensure proper SAM output\n(default: /)"
  type: long?
  inputBinding:
    prefix: --pe-delimiter
- id: in_threads
  doc: Number of candidate search threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sensitivity
  doc: "A value between 0 and 1 that determines the\nnumber of candidate mapping regions\
    \ that will\nbe evaluated with an sequence alignment.\n0: all CMR(s) will be evaluated\n\
    1: only the best CMR(s) will be evaluated\nHigher values will reduce the runtime\
    \ but also\nhave a negative effect on mapping sensitivity.\n(default: estimated\
    \ from input data)"
  type: double?
  inputBinding:
    prefix: --sensitivity
- id: in_very_fast
  doc: 'Scale estimated sensitivity: Much faster, much less accurate'
  type: boolean?
  inputBinding:
    prefix: --very-fast
- id: in_fast
  doc: 'Scale estimated sensitivity: Faster, less accurate'
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_sensitive
  doc: 'Scale estimated sensitivity: More accurate, slower'
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_very_sensitive
  doc: 'Scale estimated sensitivity: Much more accurate, much slower'
  type: boolean?
  inputBinding:
    prefix: --very-sensitive
- id: in_min_identity
  doc: "All reads mapped with an identity lower than\nthis threshold will be reported\
    \ as unmapped\n(default: 0.65)"
  type: long?
  inputBinding:
    prefix: --min-identity
- id: in_min_residues
  doc: "All reads mapped with lower than\n<int> or <float> * read length residues\n\
    will be reported as unmapped. (default: 0.5)"
  type: double?
  inputBinding:
    prefix: --min-residues
- id: in_min_mq
  doc: "All reads mapped with lower than <int>\nmapping quality will be reported as\
    \ unmapped.\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --min-mq
- id: in_gpu
  doc: "[int,...]            Use GPU(s) for alignment computation\nNOTE: GPU Ids are\
    \ zero-based!\n-g or --gpu to use GPU\n-g 1 or --gpu 1 to use GPU 1\n-g 0,1 or\
    \ --gpu 0,1 to use GPU 0 and 1\nIf -g/--gpu is omitted, alignments will be\ncomputed\
    \ on the CPU (default)"
  type: boolean?
  inputBinding:
    prefix: --gpu
- id: in_bs_mapping
  doc: "Enables bisulfite mapping.\nFor bs-mapping, kmer-skip will be applied to\n\
    the reads instead of the reference sequence."
  type: boolean?
  inputBinding:
    prefix: --bs-mapping
- id: in_bs_cut_off
  doc: "Max. number of Ts in a k-mer. All k-mers were\nthe number of Ts is higher\
    \ than <int> are\nignored (default: 8)"
  type: long?
  inputBinding:
    prefix: --bs-cutoff
- id: in_km_er
  doc: '[10-14]             Kmer length in bases. (default: 13)'
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_km_er_skip
  doc: "Number of k-mers to skip when building the\nlookup table from the reference(default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: --kmer-skip
- id: in_km_er_min
  doc: "Minimal number of k-mer hits required to\nconsider a region a CMR. (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --kmer-min
- id: in_max_cmrs
  doc: "Reads that have more than <int> CMRs are\nignored. (default: infinite)"
  type: long?
  inputBinding:
    prefix: --max-cmrs
- id: in_skip_save
  doc: "Don't save index to disk. Saves disk space but\nincreases runtime for larger\
    \ genomes."
  type: boolean?
  inputBinding:
    prefix: --skip-save
- id: in_local
  doc: "Perform local alignment. Ends might get clipped.\n(default: on)"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_end_to_end
  doc: "Perform end-to-end alignment. No clipping.\n(default: off)"
  type: boolean?
  inputBinding:
    prefix: --end-to-end
- id: in_affine
  doc: "Use alignment algorithms that support affine gap\ncosts. This will give you\
    \ better alignments for\nlonger indels but will also increase the runtime.\n(default:\
    \ off)"
  type: boolean?
  inputBinding:
    prefix: --affine
- id: in_max_consec_indels
  doc: "Maximum number of consecutive indels allowed.\n(default: computed based on\
    \ avg. read length)"
  type: long?
  inputBinding:
    prefix: --max-consec-indels
- id: in_fast_pairing
  doc: "Mates are mapped individually. If the best\nalignments for the mates give\
    \ a proper pair\nthey are marked as paired in the output.\nIf not they are reported\
    \ as broken pair."
  type: boolean?
  inputBinding:
    prefix: --fast-pairing
- id: in_pair_score_cut_off
  doc: "To find the best pairing all alignments of a\nread that have a score in the\
    \ range of:\n[top score * pair-score-cutoff; top score]\nare taken into account."
  type: long?
  inputBinding:
    prefix: --pair-score-cutoff
- id: in_skip_mate_check
  doc: "Don't check that both mates have the same name\n(default: off)"
  type: boolean?
  inputBinding:
    prefix: --skip-mate-check
- id: in_match_bonus
  doc: "Match score\n(default: 10, affine: 10, bs-mapping: 4)"
  type: long?
  inputBinding:
    prefix: --match-bonus
- id: in_mismatch
  doc: "<int>      Mismatch penalty\n(default: 15, affine: 15, bs-mapping: 2)"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_gap_read_penalty
  doc: "Penalty for a gap in the read\n(default: 20, affine: 33, bs-mapping: 10)"
  type: long?
  inputBinding:
    prefix: --gap-read-penalty
- id: in_gap_ref_penalty
  doc: "Penalty for a gap in the reference\n(default: 20, affine: 33, bs-mapping:\
    \ 10)"
  type: long?
  inputBinding:
    prefix: --gap-ref-penalty
- id: in_gap_extend_penalty
  doc: "Penalty for extending a gap\n(default: 20, affine: 3, bs-mapping: 10)"
  type: long?
  inputBinding:
    prefix: --gap-extend-penalty
- id: in_match_bonus_tt
  doc: 'Only for bs-mapping (default: 4)'
  type: long?
  inputBinding:
    prefix: --match-bonus-tt
- id: in_match_bonus_tc
  doc: 'Only for bs-mapping (default: 4)'
  type: long?
  inputBinding:
    prefix: --match-bonus-tc
- id: in_bin_size
  doc: "Sets the size of the grid NextgenMap uses\nduring CMR search to: 2^n (default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: --bin-size
- id: in_update_check
  doc: Perform an online check for a newer version of NGM
  type: boolean?
  inputBinding:
    prefix: --update-check
- id: in_color
  doc: 'Colored text output (default: off)'
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_no_progress
  doc: "Don't print progress info while mapping\n(default: off)\n"
  type: boolean?
  inputBinding:
    prefix: --no-progress
- id: in_ngm
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_no_unal
  doc: Don't print unaligned reads to output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_no_unal)
hints: []
cwlVersion: v1.1
baseCommand:
- ngm-log
