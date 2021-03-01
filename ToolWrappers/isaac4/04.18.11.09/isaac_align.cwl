class: CommandLineTool
id: isaac_align.cwl
inputs:
- id: in_allow_empty_flow_cells
  doc: "(=0)                Avoid failure when some of\nthe --base-calls contain no\n\
    data"
  type: long?
  inputBinding:
    prefix: --allow-empty-flowcells
- id: in_anchor_mate
  doc: "(=1)                          Allow entire pair to be\nanchored by only one\
    \ read if\nit has not been realigned. If\nnot set, each read is\nanchored individually\
    \ and\ndoes not affect anchoring of\nits mate."
  type: long?
  inputBinding:
    prefix: --anchor-mate
- id: in_anomalous_pair_handicap
  doc: "(=240)            When deciding between an\nanomalous pair and a rescued\n\
    pair, this is proportional to\nthe number of mismatches\nanomalous pair needs\
    \ to have\nless in order to be accepted\ninstead of a rescued pair."
  type: long?
  inputBinding:
    prefix: --anomalous-pair-handicap
- id: in_bam_exclude_tags
  doc: "(=ZX,ZY)                 Comma-separated list of\nregular tags to exclude\
    \ from\nthe output BAM files. Allowed\nvalues are: all,none,AS,BC,NM\n,OC,RG,SM,ZX,ZY"
  type: string?
  inputBinding:
    prefix: --bam-exclude-tags
- id: in_bam_gzip_level
  doc: (=1)                       Gzip level to use for BAM
  type: long?
  inputBinding:
    prefix: --bam-gzip-level
- id: in_bam_header_tag
  doc: "Additional bam entries that\nare copied into the header of\neach produced\
    \ bam file. Use\n'\\t' to represent tab\nseparators."
  type: File?
  inputBinding:
    prefix: --bam-header-tag
- id: in_bam_pessimistic_mapq
  doc: "(=0)                 When set, the MAPQ is\ncomputed as MAPQ:=min(60,\nmin(SM,\
    \ AS)), otherwise\nMAPQ:=min(60, max(SM, AS))"
  type: long?
  inputBinding:
    prefix: --bam-pessimistic-mapq
- id: in_bam_produce_md_five
  doc: "(=1)                      Controls whether a separate\nfile containing md5\
    \ checksum\nis produced for each output\nbam."
  type: File?
  inputBinding:
    prefix: --bam-produce-md5
- id: in_bam_pu_format
  doc: "(=%F:%L:%B)                 Template string for bam\nheader RG tag PU field.\n\
    Ordinary characters are\ndirectly copied. The\nfollowing placeholders are\nsupported:\n\
    - %F             : Flowcell\nID\n- %L             : Lane\nnumber\n- %B       \
    \      : Barcode"
  type: long?
  inputBinding:
    prefix: --bam-pu-format
- id: in_barcode_mismatches
  doc: "(=1)                   Multiple entries allowed.\nEach entry is applied to\
    \ the\ncorresponding base-calls.\nLast entry applies to all the\nbases-calls-directory\
    \ that do\nnot have barcode-mismatches\nspecified. Last component\nmismatch value\
    \ applies to all\nsubsequent barcode components\nshould there be more than\none.\
    \ Examples:\n- 1:0             : allow\none mismatch for the first\nbarcode component\
    \ and no\nmismatches for the subsequent\ncomponents.\n- 1               : allow\n\
    one mismatch for every\nbarcode component.\n- 0               : no\nmismatches\
    \ allowed in any\nbarcode component. This is\nthe default."
  type: Directory?
  inputBinding:
    prefix: --barcode-mismatches
- id: in_arg_full_path_base
  doc: "[ --base-calls ] arg                         full path to the base calls.\n\
    Multiple entries allowed.\nPath should point either to a\ndirectory or a file\
    \ depending\non --base-calls-format"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_multiple_entries
  doc: "[ --base-calls-format ] arg                  Multiple entries allowed.\nEach\
    \ entry is applied to the\ncorresponding base-calls.\nLast entry is applied to\
    \ all\n--base-calls that don't have\n--base-calls-format\nspecified.\n- bam  \
    \           :\n--base-calls points to a Bam\nfile. All data found in bam\nfile\
    \ is assumed to come from\nlane 1 of a single flowcell.\n- bcl             :\n\
    --base-calls points to\nRunInfo.xml file. Data is\nmade of uncompressed bcl\n\
    files.\n- bcl-gz          :\n--base-calls points to\nRunInfo.xml file. Bcl cycle\n\
    tile files are individually\ncompressed and named\ns_X_YYYY.bcl.gz\n- bcl-bgzf\
    \        :\n--base-calls points to\nRunInfo.xml file. Bcl data is\nstored in cycle\
    \ files that\nare named CCCC.bcl.bgzf\n- fastq           :\n--base-calls points\
    \ to a\ndirectory containing one\nfastq per lane/read named\nlane<X>_read<Y>.fastq.\
    \ Use\nlane<X>_read1.fastq for\nsingle-ended data.\n- fastq-gz        :\n--base-calls\
    \ points to a\ndirectory containing one\ncompressed fastq per\nlane/read named\n\
    lane<X>_read<Y>.fastq.gz. Use\nlane<X>_read1.fastq.gz for\nsingle-ended data."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_base_quality_cut_off
  doc: "(=15)                 3' end quality trimming\ncutoff. Value above 0 causes\n\
    low quality bases to be\nsoft-clipped. 0 turns the\ntrimming off."
  type: long?
  inputBinding:
    prefix: --base-quality-cutoff
- id: in_bcl_tiles_per_chunk
  doc: "(=1)                  Increase this number when the\ntiles are too small for\
    \ the\nprocessing to be efficient.\nIn particular, collecting the\ntemplate length\
    \ statistics\nrequires several tens of\nthousands clusters to work.\nIf tiles\
    \ are small and data\nis heavily multiplexed, there\nmight be not enough clusters\n\
    in a single tile to collect\nthe tls for a sample"
  type: long?
  inputBinding:
    prefix: --bcl-tiles-per-chunk
- id: in_bin_regex
  doc: "(=all)                          Define which bins appear in\nthe output bam\
    \ files\nall                   :\nInclude all bins in the bam\nand all contig\
    \ entries in the\nbam header.\nskip-empty             :\nInclude only the contigs\
    \ that\nhave aligned data.\nREGEX                 : Is\ntreated as comma-separated\n\
    list of regular expressions.\nBam files will be filtered to\ncontain only the\
    \ bins that\nmatch by the name."
  type: string?
  inputBinding:
    prefix: --bin-regex
- id: in_candidate_matches_max
  doc: "(=800)              Maximum number of candidate\nmatches to be considered\
    \ for\nfinding the best alignment.\nIf seeds yield a greater\nnumber, the alignment\n\
    generally is not performed.\nOther mechanisms such as\nshadow rescue may still\
    \ place\nthe fragment."
  type: long?
  inputBinding:
    prefix: --candidate-matches-max
- id: in_cleanup_intermediary
  doc: "(=0)                 When set, Isaac will erase\nintermediate input files\
    \ for\nthe stages that have been\ncompleted. Notice that this\nwill prevent resumption\
    \ from\nthe stages that have their\ninput files removed.\n--start-from Last will\
    \ still\nwork."
  type: long?
  inputBinding:
    prefix: --cleanup-intermediary
- id: in_clip_overlapping
  doc: "(=1)                     When set, the pairs that have\nread ends overlapping\
    \ each\nother will have the\nlower-quality end\nsoft-clipped."
  type: long?
  inputBinding:
    prefix: --clip-overlapping
- id: in_clip_semi_aligned
  doc: "(=0)                     When set, reads have their\nbases soft-clipped on\
    \ either\nsides until a stretch of 5\nmatches is found"
  type: long?
  inputBinding:
    prefix: --clip-semialigned
- id: in_arg_restrict_alignment
  doc: "[ --cluster ] arg                            Restrict the alignment to the\n\
    specified cluster Id\n(multiple entries allowed)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_clusters_at_a_time
  doc: "(=8000000)             Bam and fastq only. When not\nset, number of clusters\
    \ to\nprocess together when input\nis bam or fastq is computed\nautomatically\
    \ based on the\namount of available RAM. Set\nto non-zero value to force\ndeterministic\
    \ behavior."
  type: long?
  inputBinding:
    prefix: --clusters-at-a-time
- id: in_decoy_regex
  doc: "(=decoy)                      Contigs that have matching\nnames are marked\
    \ as decoys\nand enjoy reduced effort. In\nparticular:\n- Smith waterman is not\n\
    used for alignments\n- Suspicious alignments are\nmarked dodgyFor example, to\n\
    mark everything that does not\nbegin with chr as decoy use\nthe following regex:\n\
    ^(?!chr.*)"
  type: string?
  inputBinding:
    prefix: --decoy-regex
- id: in_default_adapters
  doc: "Multiple entries allowed.\nEach entry is associated with\nthe corresponding\
    \ base-calls.\nFlowcells that don't have\ndefault-adapters provided,\ndon't get\
    \ adapters clipped in\nthe data.\nEach entry is a\ncomma-separated list of\nadapter\
    \ sequences written in\nthe direction of the\nreference. Wildcard (*\ncharacter)\
    \ is allowed only on\none side of the sequence.\nEntries with * apply only to\n\
    the alignments on the\nmatching strand. Entries\nwithout * apply to all strand\n\
    alignments and are matched in\nthe order of appearance in\nthe list.\nExamples:\n\
    ACGT*,*TGCA       : Will\nclip ACGT and all subsequent\nbases in the forward-strand\n\
    alignments and mirror the\nbehavior for the\nreverse-strand alignments.\nACGT,TGCA\
    \         : Will\nfind the following sequences\nin the reads: ACGT, TGCA,\nACGTTGCA\
    \  (but not TGCAACGT!)\nregardless of the alignment\nstrand. Then will attempt\
    \ to\nclip off the side of the read\nthat is shorter. If both\nsides are roughly\
    \ equal\nlength, will clip off the\nside that has less matches.\nStandard    \
    \      :\nStandard protocol adapters.\nSame as AGATCGGAAGAGC*,*GCTCT\nTCCGATCT\n\
    Nextera           : Nextera\nstandard. Same as\nCTGTCTCTTATACACATCT*,*AGATGTG\n\
    TATAAGAGACAG\nNexteraMp         : Nextera\nmate-pair. Same as\nCTGTCTCTTATACACATCT,AGATGTGTA\n\
    TAAGAGACAG"
  type: long?
  inputBinding:
    prefix: --default-adapters
- id: in_description
  doc: "Free form text to be stored\nin the Isaac @PG DS bam\nheader tag"
  type: string?
  inputBinding:
    prefix: --description
- id: in_detect_template_block_size
  doc: "(=10000)       Number of pairs to use as a\nsingle block for template\nlength\
    \ statistics detection"
  type: long?
  inputBinding:
    prefix: --detect-template-block-size
- id: in_disable_resume
  doc: "(=0)                       If eanbled, Isaac does not\npersist the state of\
    \ the\nanalysis on disk. This might\nsave noticeable amount of\nruntime at the\
    \ expense of not\nbeing able to use\n--start-from option."
  type: long?
  inputBinding:
    prefix: --disable-resume
- id: in_dodgy_alignment_score
  doc: "(=0)                Controls the behavior for\ntemplates where alignment\n\
    score is impossible to\nassign:\n- Unaligned        : marks\ntemplate fragments\
    \ as\nunaligned\n- 0-254            : exact\nMAPQ value to be set in bam\n- Unknown\
    \          : assigns\nvalue 255 for bam MAPQ.\nEnsures SM and AS are not\nspecified\
    \ in the bam"
  type: long?
  inputBinding:
    prefix: --dodgy-alignment-score
- id: in_enable_numa
  doc: "[=arg(=1)] (=0)                   Replicate static data across\nNUMA nodes,\
    \ lock threads to\ntheir NUMA nodes, allocate\nthread private data on the\ncorresponding\
    \ NUMA node"
  type: boolean?
  inputBinding:
    prefix: --enable-numa
- id: in_expected_bg_zf_ratio
  doc: "(=1)                  compressed = ratio *\nuncompressed. To avoid memory\n\
    overallocation during the bam\ngeneration, Isaac has to\nassume certain compression\n\
    ratio. If Isaac estimates\nless memory than is actually\nrequired, it will fail\
    \ at\nruntime. You can check how\nfar you are from the\ndangerous zone by looking\
    \ at\nthe resident/swap memory\nnumbers for your process\nduring the bam generation.\
    \ If\nyou see too much showing as\n'swap', it is safe to reduce\nthe --expected-bgzf-ratio."
  type: long?
  inputBinding:
    prefix: --expected-bgzf-ratio
- id: in_expected_coverage
  doc: "(=60)                   Expected coverage is required\nfor Isaac to estimate\
    \ the\nefficient binning of the\naligned data."
  type: long?
  inputBinding:
    prefix: --expected-coverage
- id: in_fast_q_q_zero
  doc: "(=!)                             Character to serve as base\nquality 0 in\
    \ fastq input."
  type: long?
  inputBinding:
    prefix: --fastq-q0
- id: in_gap_scoring
  doc: "(=bwa)                        Gapped alignment algorithm\nparameters:\n- eland\
    \            :\nequivalent of 2:-1:-15:-3:-25\n- bwa              :\nequivalent\
    \ of 0:-3:-11:-4:-20\n- bwa-mem          :\nequivalent of 1:-4:-6:-1:-20\n- m:mm:go:ge:me:gl\
    \ :\ncolon-delimited string of\nvalues where:\nm              : match\nscore\n\
    mm             :\nmismatch score\ngo             : gap\nopen score\nge       \
    \      : gap\nextend score\nme             : min\nextend score (all gaps\nreaching\
    \ this score will be\ntreated as equal)"
  type: long?
  inputBinding:
    prefix: --gap-scoring
- id: in_hash_table_buckets
  doc: "(=0)                   Number of buckets to use for\nreference hash table.\
    \ Larger\nnumber of buckets requires\nmore RAM but it tends to\nspeed up the execution\
    \ and\nimprove sensitivity. Value of\n0 indicates default bucket\ncount: 2^({seed-length}*2)"
  type: long?
  inputBinding:
    prefix: --hash-table-buckets
- id: in_help_defaults
  doc: "produce tab-delimited list of\ncommand line options and\ntheir default values"
  type: boolean?
  inputBinding:
    prefix: --help-defaults
- id: in_help_md
  doc: "produce help message\npre-formatted as a markdown\nfile section and exit"
  type: boolean?
  inputBinding:
    prefix: --help-md
- id: in_ignore_missing_bcls
  doc: "(=0)                  When set, missing bcl files\nare treated as all clusters\n\
    having N bases for the\ncorresponding tile cycle.\nOtherwise, encountering a\n\
    missing bcl file causes the\nanalysis to fail."
  type: File?
  inputBinding:
    prefix: --ignore-missing-bcls
- id: in_ignore_missing_filters
  doc: "(=0)               When set, missing filter\nfiles are treated as if all\n\
    clusters pass filter for the\ncorresponding tile.\nOtherwise, encountering a\n\
    missing filter file causes\nthe analysis to fail."
  type: File?
  inputBinding:
    prefix: --ignore-missing-filters
- id: in_input_concurrent_load
  doc: "(=64)               Maximum number of concurrent\nfile read operations for\n\
    --base-calls"
  type: long?
  inputBinding:
    prefix: --input-concurrent-load
- id: in_arg_maximum_number
  doc: "[ --jobs ] arg (=8)                          Maximum number of compute\nthreads\
    \ to run in parallel"
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_keep_duplicates
  doc: "(=1)                      Keep duplicate pairs in the\nbam file (with 0x400\
    \ flag set\nin all but the best one)"
  type: File?
  inputBinding:
    prefix: --keep-duplicates
- id: in_keep_unaligned
  doc: "(=back)                    Available options:\n- discard          : discard\n\
    clusters where both reads are\nnot aligned\n- front            : keep\nunaligned\
    \ clusters in the\nfront of the BAM file\n- back             : keep\nunaligned\
    \ clusters in the\nback of the BAM file"
  type: File?
  inputBinding:
    prefix: --keep-unaligned
- id: in_known_indels
  doc: "path to a VCF file containing\nknown indels fore\nrealignment."
  type: File?
  inputBinding:
    prefix: --known-indels
- id: in_lane_number_max
  doc: "(=8)                      Maximum lane number to look\nfor in --base-calls-directory\n\
    (fastq only)."
  type: long?
  inputBinding:
    prefix: --lane-number-max
- id: in_mapq_threshold
  doc: "(=-1)                      If any fragment alignment in\ntemplate is below\
    \ the\nthreshold, template is not\nstored in the BAM."
  type: long?
  inputBinding:
    prefix: --mapq-threshold
- id: in_mark_duplicates
  doc: "(=1)                      If not set and --keep-duplica\ntes is set, the duplicates\n\
    are not discarded and not\nflagged."
  type: long?
  inputBinding:
    prefix: --mark-duplicates
- id: in_match_finder_shadow_split_repeats
  doc: "(=100000)\nMaximum number of seed\ncandidate matches to be\nconsidered for\
    \ finding a\npossible alignment split."
  type: long?
  inputBinding:
    prefix: --match-finder-shadow-split-repeats
- id: in_match_finder_too_many_repeats
  doc: "(=4000)     Maximum number of seed\nmatches to be looked at for\neach attempted\
    \ seed"
  type: long?
  inputBinding:
    prefix: --match-finder-too-many-repeats
- id: in_match_finder_way_too_many_repeats
  doc: "(=100000)\nMaximum number of seed\nmatches to be looked at if in\na pair one\
    \ read has candidate\nalignments and the otherhas\ngone over match-finder-too-ma\n\
    ny-repeats on all seeds or\nover candidate-matches-max\nwhen seed position merge\
    \ was\nattempted"
  type: long?
  inputBinding:
    prefix: --match-finder-way-too-many-repeats
- id: in_memory_control
  doc: "(=off)                     Define the behavior in case\nunexpected memory\
    \ allocations\nare detected:\n- warning         : Log\nWARNING about the allocation.\n\
    - off             : Don't\nmonitor dynamic memory usage.\n- strict          :\
    \ Fail\nmemory allocation. Intended\nfor development use."
  type: string?
  inputBinding:
    prefix: --memory-control
- id: in_arg_limits_operations
  doc: "[ --memory-limit ] arg (=0)                  Limits major memory\nconsumption\
    \ operations to a\nset number of gigabytes. 0\nmeans no limit, however 0 is\n\
    not allowed as in such case\nIsaac will most likely\nconsume all the memory on\
    \ the\nsystem and cause it to crash.\nDefault value is taken from\nulimit -v."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_neighborhood_size_threshold
  doc: "(=0)          Threshold used to decide if\nthe number of reference\n32-mers\
    \ sharing the same\nprefix (16 bases) is small\nenough to justify the\nneighborhood\
    \ search. Use\nlarge enough value e.g. 10000\nto enable alignment to\npositions\
    \ where seeds don't\nmatch exactly."
  type: long?
  inputBinding:
    prefix: --neighborhood-size-threshold
- id: in_output_concurrent_save
  doc: "(=120)             Maximum number of concurrent\nfile write operations for\n\
    --output-directory"
  type: long?
  inputBinding:
    prefix: --output-concurrent-save
- id: in_arg_directory_stored
  doc: "[ --output-directory ] arg (=./Aligned)      Directory where the final\nalignment\
    \ data be stored"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_per_tile_tls
  doc: "(=0)                         Forces template length\nstatistics(TLS) to be\n\
    recomputed for each tile.\nWhen not set, the first tile\nthat produces stable\
    \ TLS will\ndetermine TLS for the rest of\nthe tiles of the lane. Notice\nthat\
    \ as the tiles are not\nguaranteed to be processed in\nthe same order between\n\
    different runs, some pair\nalignments might vary between\ntwo runs on the same\
    \ data\nunless --per-tile-tls is set.\nIt is not recommended to set\n--per-tile-tls\
    \ when input\ndata is not randomly\ndistributed (such as bam) as\nin such cases,\
    \ the shadow\nrescue range will be biased\nby the input data ordering."
  type: long?
  inputBinding:
    prefix: --per-tile-tls
- id: in_pf_only
  doc: "(=1)                              When set, only the fragments\npassing filter\
    \ (PF) are\ngenerated in the BAM file"
  type: File?
  inputBinding:
    prefix: --pf-only
- id: in_pre_allocate_bins
  doc: "(=0)                    Use fallocate to reduce the\nbin file fragmentation.\
    \ Since\nbin files are pre-allocated\nbased on the estimation of\ntheir size,\
    \ it is recommended\nto turn bin pre-allocation\noff when using RAM disk as\n\
    temporary storage."
  type: long?
  inputBinding:
    prefix: --pre-allocate-bins
- id: in_pre_sort_bins
  doc: "(=1)                        Unset this value if you are\nworking with references\
    \ that\nhave many contigs (1000+)"
  type: long?
  inputBinding:
    prefix: --pre-sort-bins
- id: in_read_name_length
  doc: "(=0)                     Maximum read name length\n(fastq and bam only). Value\n\
    of 0 causes the read name\nlength to be determined by\nreading the first records\
    \ of\nthe input data. Shorter than\nneeded read names can cause\nduplicate names\
    \ in the output\nbam files."
  type: long?
  inputBinding:
    prefix: --read-name-length
- id: in_realign_dodgy
  doc: "(=0)                        If not set, the reads without\nalignment score\
    \ are not\nrealigned against gaps found\nin other reads."
  type: long?
  inputBinding:
    prefix: --realign-dodgy
- id: in_realign_gaps
  doc: "(=sample)                    For reads overlapping the\ngaps occurring on\
    \ other\nreads, check if applying\nthose gaps reduces mismatch\ncount. Significantly\
    \ reduces\nnumber of false SNPs reported\naround short indels.\n- no         \
    \     : no gap\nrealignment\n- sample          : realign\nagainst gaps found in\
    \ the\nsame sample\n- project         : realign\nagainst gaps found in all\nsamples\
    \ of the same project\n- all             : realign\nagainst gaps found in all\n\
    samples"
  type: long?
  inputBinding:
    prefix: --realign-gaps
- id: in_realign_mapq_min
  doc: "(=60)                    Gaps from alignments with\nlower MAPQ will not be\
    \ used\nas candidates for gap\nrealignment"
  type: long?
  inputBinding:
    prefix: --realign-mapq-min
- id: in_realign_vigorously
  doc: "(=0)                   If set, the realignment\nresult will be used to search\n\
    for more gaps and attempt\nanother realignment,\neffectively extending the\nrealignment\
    \ over multiple\ndeletions not covered by the\noriginal alignment."
  type: long?
  inputBinding:
    prefix: --realign-vigorously
- id: in_realigned_gaps_per_fragment
  doc: "(=4)          Maximum number of gaps the\nrealigner can introduce into\na\
    \ fragment. For 100 bases\nlong DNA it is reasonable to\nkeep it no bigger than\
    \ 2. RNA\nreads can overlap multiple\nintrons. Therefore a larger\nnumber is probably\
    \ required\nfor RNA. Notice that bigger\nvalues can significantly slow\ndown the\
    \ bam generation as\nthere is a n choose k\ncombination try with n being\nthe\
    \ number of gaps detected\nby all other fragment\nalignments that overlap the\n\
    fragment being realigned."
  type: long?
  inputBinding:
    prefix: --realigned-gaps-per-fragment
- id: in_arg_full_path_referencegenome
  doc: "[ --reference-genome ] arg                   Full path to the reference\n\
    genome XML descriptor."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_default_name
  doc: "[ --reference-name ] arg (=default)          Unique symbolic name of the\n\
    reference. Multiple entries\nallowed. Each entry is\nassociated with the\ncorresponding\
    \ --reference-gen\nome and will be matched\nagainst the 'reference'\ncolumn in\
    \ the sample sheet.\nSpecial names:\n- unknown         : default\nreference to\
    \ use with data\nthat did not match any\nbarcode.\n- default         :\nreference\
    \ to use for the data\nwith no matching value in\nsample sheet 'reference'\ncolumn."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_remap_q_scores
  doc: "Replace the base calls\nqscores according to the\nrules provided.\n- identity\
    \   : No remapping.\nOriginal qscores are\npreserved\n- bin:8      : Equivalent\
    \ of\n0-1:0,2-9:7,10-19:11,20-24:22\n,25-29:27,30-34:32,35-39:37,4\n0-63:40"
  type: long?
  inputBinding:
    prefix: --remap-qscores
- id: in_repeat_threshold
  doc: "(=100)                   Threshold used to decide if\nmatches must be discarded\
    \ as\ntoo abundant (when the number\nof repeats is greater or\nequal to the threshold)"
  type: long?
  inputBinding:
    prefix: --repeat-threshold
- id: in_rescue_shadows
  doc: "(=1)                       Scan within dominant template\nrange off an orphan,\
    \ for a\npossible shadow alignment"
  type: long?
  inputBinding:
    prefix: --rescue-shadows
- id: in_response_file
  doc: file with more command line
  type: File?
  inputBinding:
    prefix: --response-file
- id: in_scatter_repeats
  doc: "(=1)                      When set, extra care will be\ntaken to scatter pairs\n\
    aligning to repeats across\nthe repeat locations"
  type: long?
  inputBinding:
    prefix: --scatter-repeats
- id: in_seed_base_quality_min
  doc: "(=3)                Minimum base quality for the\nseed to be used in alignment\n\
    candidate search."
  type: long?
  inputBinding:
    prefix: --seed-base-quality-min
- id: in_seed_length
  doc: "(=16)                         Length of the seed in bases.\nOnly 10 11 12\
    \ 13 14 15 16 17\n18 19 20  are allowed. Longer\nseeds reduce sensitivity on\n\
    noisy data but improve repeat\nresolution and run time."
  type: long?
  inputBinding:
    prefix: --seed-length
- id: in_shadow_scan_range
  doc: "(=-1)                   -1     - scan for possible\nmate alignments between\n\
    template min and max\n>=0    - scan for possible\nmate alignments in range of\n\
    template median +=\nshadow-scan-range"
  type: long?
  inputBinding:
    prefix: --shadow-scan-range
- id: in_single_library_samples
  doc: "(=1)               If set, the duplicate\ndetection will occur across\nall\
    \ read pairs in the sample.\nIf not set, different lanes\nare assumed to originate\
    \ from\ndifferent libraries and\nduplicate detection is not\nperformed across\
    \ lanes."
  type: long?
  inputBinding:
    prefix: --single-library-samples
- id: in_smith_waterman_gap_size_max
  doc: "(=16)         Maximum length of gap\ndetectable by smith waterman\nalgorithm."
  type: long?
  inputBinding:
    prefix: --smith-waterman-gap-size-max
- id: in_smith_waterman_gaps_max
  doc: "(=4)              Maximum number of gaps that\ncan be introduced into an\n\
    alignment by Smith-Waterman\nalgorithm. If the optimum\nalignment has more gaps,\
    \ it\nis simply ignored as an\nalignment candidate."
  type: long?
  inputBinding:
    prefix: --smith-waterman-gaps-max
- id: in_split_alignments
  doc: "(=1)                     When set, alignments crossing\na structural variant\
    \ are\nallowed to be split with SA\ntag."
  type: long?
  inputBinding:
    prefix: --split-alignments
- id: in_split_gap_length
  doc: "(=10000)                 Maximum length of insertion\nor deletion allowed\
    \ to exist\nin a read. If a gap exceeds\nthis limit, the read gets\nbroken up\
    \ around the gap with\nSA tag introduced"
  type: long?
  inputBinding:
    prefix: --split-gap-length
- id: in_start_from
  doc: "(=Start)                       Start processing at the\nspecified stage:\n\
    - Start            : don't\nresume, start from beginning\n- Align            :\
    \ same\nas Start\n- AlignmentReports :\nregenerate alignment reports\nand bam\n\
    - Bam              : resume\nat bam generation\n- Finish           : Same\nas\
    \ Bam.\n- Last             : resume\nfrom the last successful step\nNote that\
    \ although Isaac\nattempts to perform some\nbasic validation, the only\nsafe option\
    \ is 'Start' The\nprimary purpose of the\nfeature is to reduce the time\nrequired\
    \ to diagnose the\nissues rather than be used on\na regular basis."
  type: string?
  inputBinding:
    prefix: --start-from
- id: in_stats_image_format
  doc: "(=none)                Format to use for images\nduring stats generation\n\
    - gif        : produce .gif\ntype plots\n- none       : no stat\ngeneration"
  type: string?
  inputBinding:
    prefix: --stats-image-format
- id: in_stop_at
  doc: "(=Finish)                         Stop processing after the\nspecified stage\
    \ is complete:\n- Start            :\nperform the first stage only\n- Align  \
    \          : same\nas Start\n- AlignmentReports : don't\nperform bam generation\n\
    - Bam              : finish\nwhen bam is done\n- Finish           : stop\nat the\
    \ end.\n- Last             :\nperform up to the last\nsuccessful step only\nNote\
    \ that although Isaac\nattempts to perform some\nbasic validation, the only\n\
    safe option is 'Finish' The\nprimary purpose of the\nfeature is to reduce the\
    \ time\nrequired to diagnose the\nissues rather than be used on\na regular basis."
  type: string?
  inputBinding:
    prefix: --stop-at
- id: in_target_bin_size
  doc: "(=0)                      Isaac will attempt to bin\ntemporary data so that\
    \ each\nbin is close to targetBinSize\nin megabytes (1024 * 1024\nbytes). Value\
    \ of 0 will cause\nIsaac to compute the target\nbin size automatically based\n\
    on the available memory."
  type: long?
  inputBinding:
    prefix: --target-bin-size
- id: in_temp_concurrent_load
  doc: "(=4)                 Maximum number of concurrent\nfile read operations for\n\
    --temp-directory"
  type: long?
  inputBinding:
    prefix: --temp-concurrent-load
- id: in_temp_concurrent_save
  doc: "(=680)               Maximum number of concurrent\nfile write operations for\n\
    --temp-directory"
  type: long?
  inputBinding:
    prefix: --temp-concurrent-save
- id: in_arg_directory_be
  doc: "[ --temp-directory ] arg (=./Temp)           Directory where the temporary\n\
    files will be stored\n(matches, unsorted\nalignments, etc.)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_tiles
  doc: "Comma-separated list of\nregular expressions to select\nonly a subset of the\
    \ tiles\navailable in the flow-cell.\n- to select all the tiles\nending with '5'\
    \ in all lanes:\n--tiles [0-9][0-9][0-9]5\n- to select tile 2 in lane 1\nand all\
    \ the tiles in the\nother lanes: --tiles\ns_1_0002,s_[2-8]\nMultiple entries allowed,\n\
    each applies to the\ncorresponding base-calls."
  type: long?
  inputBinding:
    prefix: --tiles
- id: in_tls
  doc: "Template-length statistics in\nthe format 'min:median:max:lo\nwStdDev:highStdDev:M0:M1',\n\
    where M0 and M1 are the\nnumeric value of the models\n(0=FFp, 1=FRp, 2=RFp, 3=RRp,\n\
    4=FFm, 5=FRm, 6=RFm, 7=RRm)"
  type: long?
  inputBinding:
    prefix: --tls
- id: in_trim_pe
  doc: (=1)                              Trim overhanging ends of PE
  type: long?
  inputBinding:
    prefix: --trim-pe
- id: in_use_smith_waterman
  doc: "(=smart)               One of the following:\n- always           : Use\nsmith-waterman\
    \ to reduce the\namount of mismatches in\naligned reads\n- smart            :\
    \ apply\nheuristics to avoid executing\ncostly smith-waterman on\nsequences that\
    \ are unlikely\nto produce gaps\n- never            : Don't\nuse smith-waterman"
  type: string?
  inputBinding:
    prefix: --use-smith-waterman
- id: in_variable_read_length
  doc: "Unless set, Isaac will fail\nif the length of the sequence\nchanges between\
    \ the records\nof a fastq or a bam file."
  type: long?
  inputBinding:
    prefix: --variable-read-length
- id: in_verbosity
  doc: "(=2)                            Verbosity: FATAL(0),\nERRORS(1), WARNINGS(2),\n\
    INFO(3), DEBUG(4) (not\nsupported yet)"
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_print_program_version
  doc: '[ --version ]                                print program version'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arguments
  doc: '-s [ --sample-sheet ] arg                       Multiple entries allowed. '
  type: string
  inputBinding:
    position: 0
- id: in_alignments
  doc: "--use-bases-mask arg                            Conversion mask characters:\n\
    - Y or y          : use\n- N or n          : discard\n- I or i          : use\
    \ for"
  type: string
  inputBinding:
    position: 0
- id: in_indexing
  doc: 'If not given, the mask will '
  type: string
  inputBinding:
    position: 1
- id: in_information
  doc: 'Failed to parse the options: /opt/conda/conda-bld/isaac4_1595676738617/work/src/c++/lib/options/AlignOptions.cpp(614):
    Throw in function void isaac::options::AlignOptions::verifyMandatoryPaths(boost::program_options::variables_map&)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bam_produce_md_five
  doc: "(=1)                      Controls whether a separate\nfile containing md5\
    \ checksum\nis produced for each output\nbam."
  type: File?
  outputBinding:
    glob: $(inputs.in_bam_produce_md_five)
- id: out_arg_directory_stored
  doc: "[ --output-directory ] arg (=./Aligned)      Directory where the final\nalignment\
    \ data be stored"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_directory_stored)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/isaac4:04.18.11.09--h07bff40_0
cwlVersion: v1.1
baseCommand:
- isaac-align
