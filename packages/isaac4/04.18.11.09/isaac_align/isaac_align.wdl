version 1.0

task Isaacalign {
  input {
    Int? allow_empty_flow_cells
    Int? anchor_mate
    Int? anomalous_pair_handicap
    String? bam_exclude_tags
    Int? bam_gzip_level
    File? bam_header_tag
    Int? bam_pessimistic_mapq
    File? bam_produce_md_five
    Int? bam_pu_format
    Directory? barcode_mismatches
    Boolean? arg_full_path_base
    Boolean? arg_multiple_entries
    Int? base_quality_cut_off
    Int? bcl_tiles_per_chunk
    String? bin_regex
    Int? candidate_matches_max
    Int? cleanup_intermediary
    Int? clip_overlapping
    Int? clip_semi_aligned
    Boolean? arg_restrict_alignment
    Int? clusters_at_a_time
    String? decoy_regex
    Int? default_adapters
    String? description
    Int? detect_template_block_size
    Int? disable_resume
    Int? dodgy_alignment_score
    Boolean? enable_numa
    Int? expected_bg_zf_ratio
    Int? expected_coverage
    Int? fast_q_q_zero
    Int? gap_scoring
    Int? hash_table_buckets
    Boolean? help_defaults
    Boolean? help_md
    File? ignore_missing_bcls
    File? ignore_missing_filters
    Int? input_concurrent_load
    Boolean? arg_maximum_number
    File? keep_duplicates
    File? keep_unaligned
    File? known_indels
    Int? lane_number_max
    Int? mapq_threshold
    Int? mark_duplicates
    Int? match_finder_shadow_split_repeats
    Int? match_finder_too_many_repeats
    Int? match_finder_way_too_many_repeats
    String? memory_control
    Boolean? arg_limits_operations
    Int? neighborhood_size_threshold
    Int? output_concurrent_save
    Directory? arg_directory_stored
    Int? per_tile_tls
    File? pf_only
    Int? pre_allocate_bins
    Int? pre_sort_bins
    Int? read_name_length
    Int? realign_dodgy
    Int? realign_gaps
    Int? realign_mapq_min
    Int? realign_vigorously
    Int? realigned_gaps_per_fragment
    Boolean? arg_full_path_referencegenome
    Boolean? arg_default_name
    Int? remap_q_scores
    Int? repeat_threshold
    Int? rescue_shadows
    File? response_file
    Int? scatter_repeats
    Int? seed_base_quality_min
    Int? seed_length
    Int? shadow_scan_range
    Int? single_library_samples
    Int? smith_waterman_gap_size_max
    Int? smith_waterman_gaps_max
    Int? split_alignments
    Int? split_gap_length
    String? start_from
    String? stats_image_format
    String? stop_at
    Int? target_bin_size
    Int? temp_concurrent_load
    Int? temp_concurrent_save
    Boolean? arg_directory_be
    Int? tiles
    Int? tls
    Int? trim_pe
    String? use_smith_waterman
    Int? variable_read_length
    Int? verbosity
    Boolean? print_program_version
    String arguments
    String alignments
    String indexing
    String information
  }
  command <<<
    isaac_align \
      ~{arguments} \
      ~{alignments} \
      ~{indexing} \
      ~{information} \
      ~{if defined(allow_empty_flow_cells) then ("--allow-empty-flowcells " +  '"' + allow_empty_flow_cells + '"') else ""} \
      ~{if defined(anchor_mate) then ("--anchor-mate " +  '"' + anchor_mate + '"') else ""} \
      ~{if defined(anomalous_pair_handicap) then ("--anomalous-pair-handicap " +  '"' + anomalous_pair_handicap + '"') else ""} \
      ~{if defined(bam_exclude_tags) then ("--bam-exclude-tags " +  '"' + bam_exclude_tags + '"') else ""} \
      ~{if defined(bam_gzip_level) then ("--bam-gzip-level " +  '"' + bam_gzip_level + '"') else ""} \
      ~{if defined(bam_header_tag) then ("--bam-header-tag " +  '"' + bam_header_tag + '"') else ""} \
      ~{if defined(bam_pessimistic_mapq) then ("--bam-pessimistic-mapq " +  '"' + bam_pessimistic_mapq + '"') else ""} \
      ~{if defined(bam_produce_md_five) then ("--bam-produce-md5 " +  '"' + bam_produce_md_five + '"') else ""} \
      ~{if defined(bam_pu_format) then ("--bam-pu-format " +  '"' + bam_pu_format + '"') else ""} \
      ~{if defined(barcode_mismatches) then ("--barcode-mismatches " +  '"' + barcode_mismatches + '"') else ""} \
      ~{if (arg_full_path_base) then "-b" else ""} \
      ~{if (arg_multiple_entries) then "-f" else ""} \
      ~{if defined(base_quality_cut_off) then ("--base-quality-cutoff " +  '"' + base_quality_cut_off + '"') else ""} \
      ~{if defined(bcl_tiles_per_chunk) then ("--bcl-tiles-per-chunk " +  '"' + bcl_tiles_per_chunk + '"') else ""} \
      ~{if defined(bin_regex) then ("--bin-regex " +  '"' + bin_regex + '"') else ""} \
      ~{if defined(candidate_matches_max) then ("--candidate-matches-max " +  '"' + candidate_matches_max + '"') else ""} \
      ~{if defined(cleanup_intermediary) then ("--cleanup-intermediary " +  '"' + cleanup_intermediary + '"') else ""} \
      ~{if defined(clip_overlapping) then ("--clip-overlapping " +  '"' + clip_overlapping + '"') else ""} \
      ~{if defined(clip_semi_aligned) then ("--clip-semialigned " +  '"' + clip_semi_aligned + '"') else ""} \
      ~{if (arg_restrict_alignment) then "-c" else ""} \
      ~{if defined(clusters_at_a_time) then ("--clusters-at-a-time " +  '"' + clusters_at_a_time + '"') else ""} \
      ~{if defined(decoy_regex) then ("--decoy-regex " +  '"' + decoy_regex + '"') else ""} \
      ~{if defined(default_adapters) then ("--default-adapters " +  '"' + default_adapters + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(detect_template_block_size) then ("--detect-template-block-size " +  '"' + detect_template_block_size + '"') else ""} \
      ~{if defined(disable_resume) then ("--disable-resume " +  '"' + disable_resume + '"') else ""} \
      ~{if defined(dodgy_alignment_score) then ("--dodgy-alignment-score " +  '"' + dodgy_alignment_score + '"') else ""} \
      ~{if (enable_numa) then "--enable-numa" else ""} \
      ~{if defined(expected_bg_zf_ratio) then ("--expected-bgzf-ratio " +  '"' + expected_bg_zf_ratio + '"') else ""} \
      ~{if defined(expected_coverage) then ("--expected-coverage " +  '"' + expected_coverage + '"') else ""} \
      ~{if defined(fast_q_q_zero) then ("--fastq-q0 " +  '"' + fast_q_q_zero + '"') else ""} \
      ~{if defined(gap_scoring) then ("--gap-scoring " +  '"' + gap_scoring + '"') else ""} \
      ~{if defined(hash_table_buckets) then ("--hash-table-buckets " +  '"' + hash_table_buckets + '"') else ""} \
      ~{if (help_defaults) then "--help-defaults" else ""} \
      ~{if (help_md) then "--help-md" else ""} \
      ~{if defined(ignore_missing_bcls) then ("--ignore-missing-bcls " +  '"' + ignore_missing_bcls + '"') else ""} \
      ~{if defined(ignore_missing_filters) then ("--ignore-missing-filters " +  '"' + ignore_missing_filters + '"') else ""} \
      ~{if defined(input_concurrent_load) then ("--input-concurrent-load " +  '"' + input_concurrent_load + '"') else ""} \
      ~{if (arg_maximum_number) then "-j" else ""} \
      ~{if defined(keep_duplicates) then ("--keep-duplicates " +  '"' + keep_duplicates + '"') else ""} \
      ~{if defined(keep_unaligned) then ("--keep-unaligned " +  '"' + keep_unaligned + '"') else ""} \
      ~{if defined(known_indels) then ("--known-indels " +  '"' + known_indels + '"') else ""} \
      ~{if defined(lane_number_max) then ("--lane-number-max " +  '"' + lane_number_max + '"') else ""} \
      ~{if defined(mapq_threshold) then ("--mapq-threshold " +  '"' + mapq_threshold + '"') else ""} \
      ~{if defined(mark_duplicates) then ("--mark-duplicates " +  '"' + mark_duplicates + '"') else ""} \
      ~{if defined(match_finder_shadow_split_repeats) then ("--match-finder-shadow-split-repeats " +  '"' + match_finder_shadow_split_repeats + '"') else ""} \
      ~{if defined(match_finder_too_many_repeats) then ("--match-finder-too-many-repeats " +  '"' + match_finder_too_many_repeats + '"') else ""} \
      ~{if defined(match_finder_way_too_many_repeats) then ("--match-finder-way-too-many-repeats " +  '"' + match_finder_way_too_many_repeats + '"') else ""} \
      ~{if defined(memory_control) then ("--memory-control " +  '"' + memory_control + '"') else ""} \
      ~{if (arg_limits_operations) then "-m" else ""} \
      ~{if defined(neighborhood_size_threshold) then ("--neighborhood-size-threshold " +  '"' + neighborhood_size_threshold + '"') else ""} \
      ~{if defined(output_concurrent_save) then ("--output-concurrent-save " +  '"' + output_concurrent_save + '"') else ""} \
      ~{if (arg_directory_stored) then "-o" else ""} \
      ~{if defined(per_tile_tls) then ("--per-tile-tls " +  '"' + per_tile_tls + '"') else ""} \
      ~{if defined(pf_only) then ("--pf-only " +  '"' + pf_only + '"') else ""} \
      ~{if defined(pre_allocate_bins) then ("--pre-allocate-bins " +  '"' + pre_allocate_bins + '"') else ""} \
      ~{if defined(pre_sort_bins) then ("--pre-sort-bins " +  '"' + pre_sort_bins + '"') else ""} \
      ~{if defined(read_name_length) then ("--read-name-length " +  '"' + read_name_length + '"') else ""} \
      ~{if defined(realign_dodgy) then ("--realign-dodgy " +  '"' + realign_dodgy + '"') else ""} \
      ~{if defined(realign_gaps) then ("--realign-gaps " +  '"' + realign_gaps + '"') else ""} \
      ~{if defined(realign_mapq_min) then ("--realign-mapq-min " +  '"' + realign_mapq_min + '"') else ""} \
      ~{if defined(realign_vigorously) then ("--realign-vigorously " +  '"' + realign_vigorously + '"') else ""} \
      ~{if defined(realigned_gaps_per_fragment) then ("--realigned-gaps-per-fragment " +  '"' + realigned_gaps_per_fragment + '"') else ""} \
      ~{if (arg_full_path_referencegenome) then "-r" else ""} \
      ~{if (arg_default_name) then "-n" else ""} \
      ~{if defined(remap_q_scores) then ("--remap-qscores " +  '"' + remap_q_scores + '"') else ""} \
      ~{if defined(repeat_threshold) then ("--repeat-threshold " +  '"' + repeat_threshold + '"') else ""} \
      ~{if defined(rescue_shadows) then ("--rescue-shadows " +  '"' + rescue_shadows + '"') else ""} \
      ~{if defined(response_file) then ("--response-file " +  '"' + response_file + '"') else ""} \
      ~{if defined(scatter_repeats) then ("--scatter-repeats " +  '"' + scatter_repeats + '"') else ""} \
      ~{if defined(seed_base_quality_min) then ("--seed-base-quality-min " +  '"' + seed_base_quality_min + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(shadow_scan_range) then ("--shadow-scan-range " +  '"' + shadow_scan_range + '"') else ""} \
      ~{if defined(single_library_samples) then ("--single-library-samples " +  '"' + single_library_samples + '"') else ""} \
      ~{if defined(smith_waterman_gap_size_max) then ("--smith-waterman-gap-size-max " +  '"' + smith_waterman_gap_size_max + '"') else ""} \
      ~{if defined(smith_waterman_gaps_max) then ("--smith-waterman-gaps-max " +  '"' + smith_waterman_gaps_max + '"') else ""} \
      ~{if defined(split_alignments) then ("--split-alignments " +  '"' + split_alignments + '"') else ""} \
      ~{if defined(split_gap_length) then ("--split-gap-length " +  '"' + split_gap_length + '"') else ""} \
      ~{if defined(start_from) then ("--start-from " +  '"' + start_from + '"') else ""} \
      ~{if defined(stats_image_format) then ("--stats-image-format " +  '"' + stats_image_format + '"') else ""} \
      ~{if defined(stop_at) then ("--stop-at " +  '"' + stop_at + '"') else ""} \
      ~{if defined(target_bin_size) then ("--target-bin-size " +  '"' + target_bin_size + '"') else ""} \
      ~{if defined(temp_concurrent_load) then ("--temp-concurrent-load " +  '"' + temp_concurrent_load + '"') else ""} \
      ~{if defined(temp_concurrent_save) then ("--temp-concurrent-save " +  '"' + temp_concurrent_save + '"') else ""} \
      ~{if (arg_directory_be) then "-t" else ""} \
      ~{if defined(tiles) then ("--tiles " +  '"' + tiles + '"') else ""} \
      ~{if defined(tls) then ("--tls " +  '"' + tls + '"') else ""} \
      ~{if defined(trim_pe) then ("--trim-pe " +  '"' + trim_pe + '"') else ""} \
      ~{if defined(use_smith_waterman) then ("--use-smith-waterman " +  '"' + use_smith_waterman + '"') else ""} \
      ~{if defined(variable_read_length) then ("--variable-read-length " +  '"' + variable_read_length + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (print_program_version) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isaac4:04.18.11.09--h07bff40_0"
  }
  parameter_meta {
    allow_empty_flow_cells: "(=0)                Avoid failure when some of\\nthe --base-calls contain no\\ndata"
    anchor_mate: "(=1)                          Allow entire pair to be\\nanchored by only one read if\\nit has not been realigned. If\\nnot set, each read is\\nanchored individually and\\ndoes not affect anchoring of\\nits mate."
    anomalous_pair_handicap: "(=240)            When deciding between an\\nanomalous pair and a rescued\\npair, this is proportional to\\nthe number of mismatches\\nanomalous pair needs to have\\nless in order to be accepted\\ninstead of a rescued pair."
    bam_exclude_tags: "(=ZX,ZY)                 Comma-separated list of\\nregular tags to exclude from\\nthe output BAM files. Allowed\\nvalues are: all,none,AS,BC,NM\\n,OC,RG,SM,ZX,ZY"
    bam_gzip_level: "(=1)                       Gzip level to use for BAM"
    bam_header_tag: "Additional bam entries that\\nare copied into the header of\\neach produced bam file. Use\\n'\\t' to represent tab\\nseparators."
    bam_pessimistic_mapq: "(=0)                 When set, the MAPQ is\\ncomputed as MAPQ:=min(60,\\nmin(SM, AS)), otherwise\\nMAPQ:=min(60, max(SM, AS))"
    bam_produce_md_five: "(=1)                      Controls whether a separate\\nfile containing md5 checksum\\nis produced for each output\\nbam."
    bam_pu_format: "(=%F:%L:%B)                 Template string for bam\\nheader RG tag PU field.\\nOrdinary characters are\\ndirectly copied. The\\nfollowing placeholders are\\nsupported:\\n- %F             : Flowcell\\nID\\n- %L             : Lane\\nnumber\\n- %B             : Barcode"
    barcode_mismatches: "(=1)                   Multiple entries allowed.\\nEach entry is applied to the\\ncorresponding base-calls.\\nLast entry applies to all the\\nbases-calls-directory that do\\nnot have barcode-mismatches\\nspecified. Last component\\nmismatch value applies to all\\nsubsequent barcode components\\nshould there be more than\\none. Examples:\\n- 1:0             : allow\\none mismatch for the first\\nbarcode component and no\\nmismatches for the subsequent\\ncomponents.\\n- 1               : allow\\none mismatch for every\\nbarcode component.\\n- 0               : no\\nmismatches allowed in any\\nbarcode component. This is\\nthe default."
    arg_full_path_base: "[ --base-calls ] arg                         full path to the base calls.\\nMultiple entries allowed.\\nPath should point either to a\\ndirectory or a file depending\\non --base-calls-format"
    arg_multiple_entries: "[ --base-calls-format ] arg                  Multiple entries allowed.\\nEach entry is applied to the\\ncorresponding base-calls.\\nLast entry is applied to all\\n--base-calls that don't have\\n--base-calls-format\\nspecified.\\n- bam             :\\n--base-calls points to a Bam\\nfile. All data found in bam\\nfile is assumed to come from\\nlane 1 of a single flowcell.\\n- bcl             :\\n--base-calls points to\\nRunInfo.xml file. Data is\\nmade of uncompressed bcl\\nfiles.\\n- bcl-gz          :\\n--base-calls points to\\nRunInfo.xml file. Bcl cycle\\ntile files are individually\\ncompressed and named\\ns_X_YYYY.bcl.gz\\n- bcl-bgzf        :\\n--base-calls points to\\nRunInfo.xml file. Bcl data is\\nstored in cycle files that\\nare named CCCC.bcl.bgzf\\n- fastq           :\\n--base-calls points to a\\ndirectory containing one\\nfastq per lane/read named\\nlane<X>_read<Y>.fastq. Use\\nlane<X>_read1.fastq for\\nsingle-ended data.\\n- fastq-gz        :\\n--base-calls points to a\\ndirectory containing one\\ncompressed fastq per\\nlane/read named\\nlane<X>_read<Y>.fastq.gz. Use\\nlane<X>_read1.fastq.gz for\\nsingle-ended data."
    base_quality_cut_off: "(=15)                 3' end quality trimming\\ncutoff. Value above 0 causes\\nlow quality bases to be\\nsoft-clipped. 0 turns the\\ntrimming off."
    bcl_tiles_per_chunk: "(=1)                  Increase this number when the\\ntiles are too small for the\\nprocessing to be efficient.\\nIn particular, collecting the\\ntemplate length statistics\\nrequires several tens of\\nthousands clusters to work.\\nIf tiles are small and data\\nis heavily multiplexed, there\\nmight be not enough clusters\\nin a single tile to collect\\nthe tls for a sample"
    bin_regex: "(=all)                          Define which bins appear in\\nthe output bam files\\nall                   :\\nInclude all bins in the bam\\nand all contig entries in the\\nbam header.\\nskip-empty             :\\nInclude only the contigs that\\nhave aligned data.\\nREGEX                 : Is\\ntreated as comma-separated\\nlist of regular expressions.\\nBam files will be filtered to\\ncontain only the bins that\\nmatch by the name."
    candidate_matches_max: "(=800)              Maximum number of candidate\\nmatches to be considered for\\nfinding the best alignment.\\nIf seeds yield a greater\\nnumber, the alignment\\ngenerally is not performed.\\nOther mechanisms such as\\nshadow rescue may still place\\nthe fragment."
    cleanup_intermediary: "(=0)                 When set, Isaac will erase\\nintermediate input files for\\nthe stages that have been\\ncompleted. Notice that this\\nwill prevent resumption from\\nthe stages that have their\\ninput files removed.\\n--start-from Last will still\\nwork."
    clip_overlapping: "(=1)                     When set, the pairs that have\\nread ends overlapping each\\nother will have the\\nlower-quality end\\nsoft-clipped."
    clip_semi_aligned: "(=0)                     When set, reads have their\\nbases soft-clipped on either\\nsides until a stretch of 5\\nmatches is found"
    arg_restrict_alignment: "[ --cluster ] arg                            Restrict the alignment to the\\nspecified cluster Id\\n(multiple entries allowed)"
    clusters_at_a_time: "(=8000000)             Bam and fastq only. When not\\nset, number of clusters to\\nprocess together when input\\nis bam or fastq is computed\\nautomatically based on the\\namount of available RAM. Set\\nto non-zero value to force\\ndeterministic behavior."
    decoy_regex: "(=decoy)                      Contigs that have matching\\nnames are marked as decoys\\nand enjoy reduced effort. In\\nparticular:\\n- Smith waterman is not\\nused for alignments\\n- Suspicious alignments are\\nmarked dodgyFor example, to\\nmark everything that does not\\nbegin with chr as decoy use\\nthe following regex:\\n^(?!chr.*)"
    default_adapters: "Multiple entries allowed.\\nEach entry is associated with\\nthe corresponding base-calls.\\nFlowcells that don't have\\ndefault-adapters provided,\\ndon't get adapters clipped in\\nthe data.\\nEach entry is a\\ncomma-separated list of\\nadapter sequences written in\\nthe direction of the\\nreference. Wildcard (*\\ncharacter) is allowed only on\\none side of the sequence.\\nEntries with * apply only to\\nthe alignments on the\\nmatching strand. Entries\\nwithout * apply to all strand\\nalignments and are matched in\\nthe order of appearance in\\nthe list.\\nExamples:\\nACGT*,*TGCA       : Will\\nclip ACGT and all subsequent\\nbases in the forward-strand\\nalignments and mirror the\\nbehavior for the\\nreverse-strand alignments.\\nACGT,TGCA         : Will\\nfind the following sequences\\nin the reads: ACGT, TGCA,\\nACGTTGCA  (but not TGCAACGT!)\\nregardless of the alignment\\nstrand. Then will attempt to\\nclip off the side of the read\\nthat is shorter. If both\\nsides are roughly equal\\nlength, will clip off the\\nside that has less matches.\\nStandard          :\\nStandard protocol adapters.\\nSame as AGATCGGAAGAGC*,*GCTCT\\nTCCGATCT\\nNextera           : Nextera\\nstandard. Same as\\nCTGTCTCTTATACACATCT*,*AGATGTG\\nTATAAGAGACAG\\nNexteraMp         : Nextera\\nmate-pair. Same as\\nCTGTCTCTTATACACATCT,AGATGTGTA\\nTAAGAGACAG"
    description: "Free form text to be stored\\nin the Isaac @PG DS bam\\nheader tag"
    detect_template_block_size: "(=10000)       Number of pairs to use as a\\nsingle block for template\\nlength statistics detection"
    disable_resume: "(=0)                       If eanbled, Isaac does not\\npersist the state of the\\nanalysis on disk. This might\\nsave noticeable amount of\\nruntime at the expense of not\\nbeing able to use\\n--start-from option."
    dodgy_alignment_score: "(=0)                Controls the behavior for\\ntemplates where alignment\\nscore is impossible to\\nassign:\\n- Unaligned        : marks\\ntemplate fragments as\\nunaligned\\n- 0-254            : exact\\nMAPQ value to be set in bam\\n- Unknown          : assigns\\nvalue 255 for bam MAPQ.\\nEnsures SM and AS are not\\nspecified in the bam"
    enable_numa: "[=arg(=1)] (=0)                   Replicate static data across\\nNUMA nodes, lock threads to\\ntheir NUMA nodes, allocate\\nthread private data on the\\ncorresponding NUMA node"
    expected_bg_zf_ratio: "(=1)                  compressed = ratio *\\nuncompressed. To avoid memory\\noverallocation during the bam\\ngeneration, Isaac has to\\nassume certain compression\\nratio. If Isaac estimates\\nless memory than is actually\\nrequired, it will fail at\\nruntime. You can check how\\nfar you are from the\\ndangerous zone by looking at\\nthe resident/swap memory\\nnumbers for your process\\nduring the bam generation. If\\nyou see too much showing as\\n'swap', it is safe to reduce\\nthe --expected-bgzf-ratio."
    expected_coverage: "(=60)                   Expected coverage is required\\nfor Isaac to estimate the\\nefficient binning of the\\naligned data."
    fast_q_q_zero: "(=!)                             Character to serve as base\\nquality 0 in fastq input."
    gap_scoring: "(=bwa)                        Gapped alignment algorithm\\nparameters:\\n- eland            :\\nequivalent of 2:-1:-15:-3:-25\\n- bwa              :\\nequivalent of 0:-3:-11:-4:-20\\n- bwa-mem          :\\nequivalent of 1:-4:-6:-1:-20\\n- m:mm:go:ge:me:gl :\\ncolon-delimited string of\\nvalues where:\\nm              : match\\nscore\\nmm             :\\nmismatch score\\ngo             : gap\\nopen score\\nge             : gap\\nextend score\\nme             : min\\nextend score (all gaps\\nreaching this score will be\\ntreated as equal)"
    hash_table_buckets: "(=0)                   Number of buckets to use for\\nreference hash table. Larger\\nnumber of buckets requires\\nmore RAM but it tends to\\nspeed up the execution and\\nimprove sensitivity. Value of\\n0 indicates default bucket\\ncount: 2^({seed-length}*2)"
    help_defaults: "produce tab-delimited list of\\ncommand line options and\\ntheir default values"
    help_md: "produce help message\\npre-formatted as a markdown\\nfile section and exit"
    ignore_missing_bcls: "(=0)                  When set, missing bcl files\\nare treated as all clusters\\nhaving N bases for the\\ncorresponding tile cycle.\\nOtherwise, encountering a\\nmissing bcl file causes the\\nanalysis to fail."
    ignore_missing_filters: "(=0)               When set, missing filter\\nfiles are treated as if all\\nclusters pass filter for the\\ncorresponding tile.\\nOtherwise, encountering a\\nmissing filter file causes\\nthe analysis to fail."
    input_concurrent_load: "(=64)               Maximum number of concurrent\\nfile read operations for\\n--base-calls"
    arg_maximum_number: "[ --jobs ] arg (=8)                          Maximum number of compute\\nthreads to run in parallel"
    keep_duplicates: "(=1)                      Keep duplicate pairs in the\\nbam file (with 0x400 flag set\\nin all but the best one)"
    keep_unaligned: "(=back)                    Available options:\\n- discard          : discard\\nclusters where both reads are\\nnot aligned\\n- front            : keep\\nunaligned clusters in the\\nfront of the BAM file\\n- back             : keep\\nunaligned clusters in the\\nback of the BAM file"
    known_indels: "path to a VCF file containing\\nknown indels fore\\nrealignment."
    lane_number_max: "(=8)                      Maximum lane number to look\\nfor in --base-calls-directory\\n(fastq only)."
    mapq_threshold: "(=-1)                      If any fragment alignment in\\ntemplate is below the\\nthreshold, template is not\\nstored in the BAM."
    mark_duplicates: "(=1)                      If not set and --keep-duplica\\ntes is set, the duplicates\\nare not discarded and not\\nflagged."
    match_finder_shadow_split_repeats: "(=100000)\\nMaximum number of seed\\ncandidate matches to be\\nconsidered for finding a\\npossible alignment split."
    match_finder_too_many_repeats: "(=4000)     Maximum number of seed\\nmatches to be looked at for\\neach attempted seed"
    match_finder_way_too_many_repeats: "(=100000)\\nMaximum number of seed\\nmatches to be looked at if in\\na pair one read has candidate\\nalignments and the otherhas\\ngone over match-finder-too-ma\\nny-repeats on all seeds or\\nover candidate-matches-max\\nwhen seed position merge was\\nattempted"
    memory_control: "(=off)                     Define the behavior in case\\nunexpected memory allocations\\nare detected:\\n- warning         : Log\\nWARNING about the allocation.\\n- off             : Don't\\nmonitor dynamic memory usage.\\n- strict          : Fail\\nmemory allocation. Intended\\nfor development use."
    arg_limits_operations: "[ --memory-limit ] arg (=0)                  Limits major memory\\nconsumption operations to a\\nset number of gigabytes. 0\\nmeans no limit, however 0 is\\nnot allowed as in such case\\nIsaac will most likely\\nconsume all the memory on the\\nsystem and cause it to crash.\\nDefault value is taken from\\nulimit -v."
    neighborhood_size_threshold: "(=0)          Threshold used to decide if\\nthe number of reference\\n32-mers sharing the same\\nprefix (16 bases) is small\\nenough to justify the\\nneighborhood search. Use\\nlarge enough value e.g. 10000\\nto enable alignment to\\npositions where seeds don't\\nmatch exactly."
    output_concurrent_save: "(=120)             Maximum number of concurrent\\nfile write operations for\\n--output-directory"
    arg_directory_stored: "[ --output-directory ] arg (=./Aligned)      Directory where the final\\nalignment data be stored"
    per_tile_tls: "(=0)                         Forces template length\\nstatistics(TLS) to be\\nrecomputed for each tile.\\nWhen not set, the first tile\\nthat produces stable TLS will\\ndetermine TLS for the rest of\\nthe tiles of the lane. Notice\\nthat as the tiles are not\\nguaranteed to be processed in\\nthe same order between\\ndifferent runs, some pair\\nalignments might vary between\\ntwo runs on the same data\\nunless --per-tile-tls is set.\\nIt is not recommended to set\\n--per-tile-tls when input\\ndata is not randomly\\ndistributed (such as bam) as\\nin such cases, the shadow\\nrescue range will be biased\\nby the input data ordering."
    pf_only: "(=1)                              When set, only the fragments\\npassing filter (PF) are\\ngenerated in the BAM file"
    pre_allocate_bins: "(=0)                    Use fallocate to reduce the\\nbin file fragmentation. Since\\nbin files are pre-allocated\\nbased on the estimation of\\ntheir size, it is recommended\\nto turn bin pre-allocation\\noff when using RAM disk as\\ntemporary storage."
    pre_sort_bins: "(=1)                        Unset this value if you are\\nworking with references that\\nhave many contigs (1000+)"
    read_name_length: "(=0)                     Maximum read name length\\n(fastq and bam only). Value\\nof 0 causes the read name\\nlength to be determined by\\nreading the first records of\\nthe input data. Shorter than\\nneeded read names can cause\\nduplicate names in the output\\nbam files."
    realign_dodgy: "(=0)                        If not set, the reads without\\nalignment score are not\\nrealigned against gaps found\\nin other reads."
    realign_gaps: "(=sample)                    For reads overlapping the\\ngaps occurring on other\\nreads, check if applying\\nthose gaps reduces mismatch\\ncount. Significantly reduces\\nnumber of false SNPs reported\\naround short indels.\\n- no              : no gap\\nrealignment\\n- sample          : realign\\nagainst gaps found in the\\nsame sample\\n- project         : realign\\nagainst gaps found in all\\nsamples of the same project\\n- all             : realign\\nagainst gaps found in all\\nsamples"
    realign_mapq_min: "(=60)                    Gaps from alignments with\\nlower MAPQ will not be used\\nas candidates for gap\\nrealignment"
    realign_vigorously: "(=0)                   If set, the realignment\\nresult will be used to search\\nfor more gaps and attempt\\nanother realignment,\\neffectively extending the\\nrealignment over multiple\\ndeletions not covered by the\\noriginal alignment."
    realigned_gaps_per_fragment: "(=4)          Maximum number of gaps the\\nrealigner can introduce into\\na fragment. For 100 bases\\nlong DNA it is reasonable to\\nkeep it no bigger than 2. RNA\\nreads can overlap multiple\\nintrons. Therefore a larger\\nnumber is probably required\\nfor RNA. Notice that bigger\\nvalues can significantly slow\\ndown the bam generation as\\nthere is a n choose k\\ncombination try with n being\\nthe number of gaps detected\\nby all other fragment\\nalignments that overlap the\\nfragment being realigned."
    arg_full_path_referencegenome: "[ --reference-genome ] arg                   Full path to the reference\\ngenome XML descriptor."
    arg_default_name: "[ --reference-name ] arg (=default)          Unique symbolic name of the\\nreference. Multiple entries\\nallowed. Each entry is\\nassociated with the\\ncorresponding --reference-gen\\nome and will be matched\\nagainst the 'reference'\\ncolumn in the sample sheet.\\nSpecial names:\\n- unknown         : default\\nreference to use with data\\nthat did not match any\\nbarcode.\\n- default         :\\nreference to use for the data\\nwith no matching value in\\nsample sheet 'reference'\\ncolumn."
    remap_q_scores: "Replace the base calls\\nqscores according to the\\nrules provided.\\n- identity   : No remapping.\\nOriginal qscores are\\npreserved\\n- bin:8      : Equivalent of\\n0-1:0,2-9:7,10-19:11,20-24:22\\n,25-29:27,30-34:32,35-39:37,4\\n0-63:40"
    repeat_threshold: "(=100)                   Threshold used to decide if\\nmatches must be discarded as\\ntoo abundant (when the number\\nof repeats is greater or\\nequal to the threshold)"
    rescue_shadows: "(=1)                       Scan within dominant template\\nrange off an orphan, for a\\npossible shadow alignment"
    response_file: "file with more command line"
    scatter_repeats: "(=1)                      When set, extra care will be\\ntaken to scatter pairs\\naligning to repeats across\\nthe repeat locations"
    seed_base_quality_min: "(=3)                Minimum base quality for the\\nseed to be used in alignment\\ncandidate search."
    seed_length: "(=16)                         Length of the seed in bases.\\nOnly 10 11 12 13 14 15 16 17\\n18 19 20  are allowed. Longer\\nseeds reduce sensitivity on\\nnoisy data but improve repeat\\nresolution and run time."
    shadow_scan_range: "(=-1)                   -1     - scan for possible\\nmate alignments between\\ntemplate min and max\\n>=0    - scan for possible\\nmate alignments in range of\\ntemplate median +=\\nshadow-scan-range"
    single_library_samples: "(=1)               If set, the duplicate\\ndetection will occur across\\nall read pairs in the sample.\\nIf not set, different lanes\\nare assumed to originate from\\ndifferent libraries and\\nduplicate detection is not\\nperformed across lanes."
    smith_waterman_gap_size_max: "(=16)         Maximum length of gap\\ndetectable by smith waterman\\nalgorithm."
    smith_waterman_gaps_max: "(=4)              Maximum number of gaps that\\ncan be introduced into an\\nalignment by Smith-Waterman\\nalgorithm. If the optimum\\nalignment has more gaps, it\\nis simply ignored as an\\nalignment candidate."
    split_alignments: "(=1)                     When set, alignments crossing\\na structural variant are\\nallowed to be split with SA\\ntag."
    split_gap_length: "(=10000)                 Maximum length of insertion\\nor deletion allowed to exist\\nin a read. If a gap exceeds\\nthis limit, the read gets\\nbroken up around the gap with\\nSA tag introduced"
    start_from: "(=Start)                       Start processing at the\\nspecified stage:\\n- Start            : don't\\nresume, start from beginning\\n- Align            : same\\nas Start\\n- AlignmentReports :\\nregenerate alignment reports\\nand bam\\n- Bam              : resume\\nat bam generation\\n- Finish           : Same\\nas Bam.\\n- Last             : resume\\nfrom the last successful step\\nNote that although Isaac\\nattempts to perform some\\nbasic validation, the only\\nsafe option is 'Start' The\\nprimary purpose of the\\nfeature is to reduce the time\\nrequired to diagnose the\\nissues rather than be used on\\na regular basis."
    stats_image_format: "(=none)                Format to use for images\\nduring stats generation\\n- gif        : produce .gif\\ntype plots\\n- none       : no stat\\ngeneration"
    stop_at: "(=Finish)                         Stop processing after the\\nspecified stage is complete:\\n- Start            :\\nperform the first stage only\\n- Align            : same\\nas Start\\n- AlignmentReports : don't\\nperform bam generation\\n- Bam              : finish\\nwhen bam is done\\n- Finish           : stop\\nat the end.\\n- Last             :\\nperform up to the last\\nsuccessful step only\\nNote that although Isaac\\nattempts to perform some\\nbasic validation, the only\\nsafe option is 'Finish' The\\nprimary purpose of the\\nfeature is to reduce the time\\nrequired to diagnose the\\nissues rather than be used on\\na regular basis."
    target_bin_size: "(=0)                      Isaac will attempt to bin\\ntemporary data so that each\\nbin is close to targetBinSize\\nin megabytes (1024 * 1024\\nbytes). Value of 0 will cause\\nIsaac to compute the target\\nbin size automatically based\\non the available memory."
    temp_concurrent_load: "(=4)                 Maximum number of concurrent\\nfile read operations for\\n--temp-directory"
    temp_concurrent_save: "(=680)               Maximum number of concurrent\\nfile write operations for\\n--temp-directory"
    arg_directory_be: "[ --temp-directory ] arg (=./Temp)           Directory where the temporary\\nfiles will be stored\\n(matches, unsorted\\nalignments, etc.)"
    tiles: "Comma-separated list of\\nregular expressions to select\\nonly a subset of the tiles\\navailable in the flow-cell.\\n- to select all the tiles\\nending with '5' in all lanes:\\n--tiles [0-9][0-9][0-9]5\\n- to select tile 2 in lane 1\\nand all the tiles in the\\nother lanes: --tiles\\ns_1_0002,s_[2-8]\\nMultiple entries allowed,\\neach applies to the\\ncorresponding base-calls."
    tls: "Template-length statistics in\\nthe format 'min:median:max:lo\\nwStdDev:highStdDev:M0:M1',\\nwhere M0 and M1 are the\\nnumeric value of the models\\n(0=FFp, 1=FRp, 2=RFp, 3=RRp,\\n4=FFm, 5=FRm, 6=RFm, 7=RRm)"
    trim_pe: "(=1)                              Trim overhanging ends of PE"
    use_smith_waterman: "(=smart)               One of the following:\\n- always           : Use\\nsmith-waterman to reduce the\\namount of mismatches in\\naligned reads\\n- smart            : apply\\nheuristics to avoid executing\\ncostly smith-waterman on\\nsequences that are unlikely\\nto produce gaps\\n- never            : Don't\\nuse smith-waterman"
    variable_read_length: "Unless set, Isaac will fail\\nif the length of the sequence\\nchanges between the records\\nof a fastq or a bam file."
    verbosity: "(=2)                            Verbosity: FATAL(0),\\nERRORS(1), WARNINGS(2),\\nINFO(3), DEBUG(4) (not\\nsupported yet)"
    print_program_version: "[ --version ]                                print program version"
    arguments: "-s [ --sample-sheet ] arg                       Multiple entries allowed. "
    alignments: "--use-bases-mask arg                            Conversion mask characters:\\n- Y or y          : use\\n- N or n          : discard\\n- I or i          : use for"
    indexing: "If not given, the mask will "
    information: "Failed to parse the options: /opt/conda/conda-bld/isaac4_1595676738617/work/src/c++/lib/options/AlignOptions.cpp(614): Throw in function void isaac::options::AlignOptions::verifyMandatoryPaths(boost::program_options::variables_map&)"
  }
  output {
    File out_stdout = stdout()
    File out_bam_produce_md_five = "${in_bam_produce_md_five}"
    Directory out_arg_directory_stored = "${in_arg_directory_stored}"
  }
}