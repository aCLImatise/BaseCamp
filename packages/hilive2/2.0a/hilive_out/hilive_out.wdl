version 1.0

task Hiliveout {
  input {
    Boolean? path_hilive_config
    Boolean? print_license_information
    File? run_info
    File? continue
    Boolean? arg_illuminas_basecalls
    Boolean? arg_specify_considered
    Boolean? arg_specify_number
    Boolean? arg_length_types
    Boolean? arg_barcodes_beconsidered
    String? run_id
    String? flow_cell_id
    File? arg_path_directory
    Boolean? arg_format_output
    Boolean? arg_cycles_alignment
    Boolean? report_found_report
    Boolean? report_unmapped
    Boolean? extended_cigar
    Directory? force_resort
    Int? max_soft_clip_ratio
    Boolean? arg_path_hilive
    Boolean? arg_alignment_mode
    Int? anchor_length
    Int? error_interval
    Int? seeding_interval
    Int? max_soft_clip_length
    Int? barcode_errors
    Boolean? align_undetermined_barcodes
    Int? min_base_call_quality
    Boolean? keep_invalid_sequences
    Boolean? arg_minimum_alignment
    Int? match_score
    Int? mismatch_penalty
    Int? insertion_opening_penalty
    Int? insertion_extension_penalty
    Int? deletion_opening_penalty
    Int? deletion_extension_penalty
    Int? max_gap_length
    String? soft_clip_opening_penalty
    Int? soft_clip_extension_penalty
    Directory? temp_dir
    Boolean? arg_keep_files
    Boolean? keep_intermediate_files
    Int? block_size
    Int? compression
    Boolean? arg_number_spawn
    Boolean? arg_maximum_number
    Boolean? config
    String run_info_dot_xml_dot
  }
  command <<<
    hilive_out \
      ~{run_info_dot_xml_dot} \
      ~{if (path_hilive_config) then "-c" else ""} \
      ~{if (print_license_information) then "-l" else ""} \
      ~{if defined(run_info) then ("--runinfo " +  '"' + run_info + '"') else ""} \
      ~{if defined(continue) then ("--continue " +  '"' + continue + '"') else ""} \
      ~{if (arg_illuminas_basecalls) then "-b" else ""} \
      ~{if (arg_specify_considered) then "-t" else ""} \
      ~{if (arg_specify_number) then "-T" else ""} \
      ~{if (arg_length_types) then "-r" else ""} \
      ~{if (arg_barcodes_beconsidered) then "-B" else ""} \
      ~{if defined(run_id) then ("--run-id " +  '"' + run_id + '"') else ""} \
      ~{if defined(flow_cell_id) then ("--flowcell-id " +  '"' + flow_cell_id + '"') else ""} \
      ~{if (arg_path_directory) then "-o" else ""} \
      ~{if (arg_format_output) then "-f" else ""} \
      ~{if (arg_cycles_alignment) then "-O" else ""} \
      ~{if (report_found_report) then "-M" else ""} \
      ~{if (report_unmapped) then "--report-unmapped" else ""} \
      ~{if (extended_cigar) then "--extended-cigar" else ""} \
      ~{if (force_resort) then "--force-resort" else ""} \
      ~{if defined(max_soft_clip_ratio) then ("--max-softclip-ratio " +  '"' + max_soft_clip_ratio + '"') else ""} \
      ~{if (arg_path_hilive) then "-i" else ""} \
      ~{if (arg_alignment_mode) then "-m" else ""} \
      ~{if defined(anchor_length) then ("--anchor-length " +  '"' + anchor_length + '"') else ""} \
      ~{if defined(error_interval) then ("--error-interval " +  '"' + error_interval + '"') else ""} \
      ~{if defined(seeding_interval) then ("--seeding-interval " +  '"' + seeding_interval + '"') else ""} \
      ~{if defined(max_soft_clip_length) then ("--max-softclip-length " +  '"' + max_soft_clip_length + '"') else ""} \
      ~{if defined(barcode_errors) then ("--barcode-errors " +  '"' + barcode_errors + '"') else ""} \
      ~{if (align_undetermined_barcodes) then "--align-undetermined-barcodes" else ""} \
      ~{if defined(min_base_call_quality) then ("--min-basecall-quality " +  '"' + min_base_call_quality + '"') else ""} \
      ~{if (keep_invalid_sequences) then "--keep-invalid-sequences" else ""} \
      ~{if (arg_minimum_alignment) then "-s" else ""} \
      ~{if defined(match_score) then ("--match-score " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("--mismatch-penalty " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(insertion_opening_penalty) then ("--insertion-opening-penalty " +  '"' + insertion_opening_penalty + '"') else ""} \
      ~{if defined(insertion_extension_penalty) then ("--insertion-extension-penalty " +  '"' + insertion_extension_penalty + '"') else ""} \
      ~{if defined(deletion_opening_penalty) then ("--deletion-opening-penalty " +  '"' + deletion_opening_penalty + '"') else ""} \
      ~{if defined(deletion_extension_penalty) then ("--deletion-extension-penalty " +  '"' + deletion_extension_penalty + '"') else ""} \
      ~{if defined(max_gap_length) then ("--max-gap-length " +  '"' + max_gap_length + '"') else ""} \
      ~{if defined(soft_clip_opening_penalty) then ("--softclip-opening-penalty " +  '"' + soft_clip_opening_penalty + '"') else ""} \
      ~{if defined(soft_clip_extension_penalty) then ("--softclip-extension-penalty " +  '"' + soft_clip_extension_penalty + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""} \
      ~{if (arg_keep_files) then "-k" else ""} \
      ~{if (keep_intermediate_files) then "-K" else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""} \
      ~{if (arg_number_spawn) then "-n" else ""} \
      ~{if (arg_maximum_number) then "-N" else ""} \
      ~{if (config) then "--config" else ""}
  >>>
  parameter_meta {
    path_hilive_config: "[ --config ]\\nPath to a HiLive config file (in general, this should be\\n'hilive_config.ini' which is created in the temp directory of the\\nrespective run)"
    print_license_information: "[ --license ]                  Print license information and exit."
    run_info: "Path to Illumina's runInfo.xml file. If\\nspecified, read lengths, lane count and\\ntile count are automatically set in\\naccordance with the sequencing run.\\nParameters obtained from the command line\\nor config file are prioritized over\\nsettings obtained from the runInfo.xml."
    continue: "Continue an interrupted HiLive run from a\\nspecified cycle. We strongly recommend to\\nload the config file that was automatically\\ncreated for the original run to continue\\nwith identical settings. This config file\\n(hilive_config.ini) can be found in the\\ntemporary directory specified with\\n--temp-dir."
    arg_illuminas_basecalls: "[ --bcl-dir ] arg              Illumina's BaseCalls directory which\\ncontains the sequence information of the\\nreads."
    arg_specify_considered: "[ --tiles ] arg                Specify the tiles to be considered for read\\nalignment. [Default: [1-2][1-3][01-16] (96\\ntiles)]"
    arg_specify_number: "[ --max-tile ] arg             Specify the highest tile number. The tile\\nnumbers will be computed by this number,\\nconsidering the correct surface count,\\nswath count and tile count for Illumina\\nsequencing.\\nThis parameter serves as a shortcut for\\n--tiles.\\nExample:\\n--max-tile 2216\\nwill activate all tiles in\\n[1-2][1-2][01-16]."
    arg_length_types: "[ --reads ] arg                Length and types of the read segments. Each\\nsegment is either a read ('R') or a barcode\\n('B'). Please give the segments in the\\ncorrect order as they are produced by the\\nsequencing machine. [REQUIRED]\\nExample:\\n--reads 101R,8B,8B,101R\\nspecifies paired-end sequencing with\\n2x101bp reads and 2x8bp barcodes."
    arg_barcodes_beconsidered: "[ --barcodes ] arg             Barcode(s) of the sample(s) to be\\nconsidered for read alignment. Barcodes\\nmust match the barcode length(s) as\\nspecified with --reads. Delimit different\\nsegments of the same barcodes by '-' and\\ndifferent barcodes by ','. [Default: All\\nbarcodes]\\nExample:\\n-b ACCG-ATTG,ATGT-TGAC\\nfor two different barcodes of length 2x4bp."
    run_id: "ID of the sequencing run. Should be\\nobtained from runInfo.xml."
    flow_cell_id: "ID of the flowcell. Should be obtained from"
    arg_path_directory: "[ --out-dir ] arg              Path to the directory that is used for the\\noutput files. The directory will be created\\nif it does not exist. [Default: ./out]"
    arg_format_output: "[ --out-format ] arg           Format of the output files. Currently, SAM\\nand BAM format are supported. [Default:\\nBAM]"
    arg_cycles_alignment: "[ --out-cycles ] arg           Cycles for that alignment output is\\nwritten. The respective temporary files are\\nkept. [Default: write only after the last\\ncycle]"
    report_found_report: "[ --out-mode ] arg             The output mode. [Default: ANYBEST]\\n[ALL|A]: Report all found alignments.\\n[BESTN#|N#]: Report the # best found\\nalignments.\\n[ALLBEST|H]: Report all found alignments\\nwith the best score.\\n[ANYBEST|B]: Report one best alignment.\\n[UNIQUE|U]: Report only unique alignments."
    report_unmapped: "Activate reporting unmapped reads.\\n[Default: false]"
    extended_cigar: "Activate extended CIGAR format for the\\nalignment output files ('=' for matches and\\n'X' for mismatches instead of using 'M' for\\nboth). [Default: false]"
    force_resort: "Always sort temporary alignment files\\nbefore writing output. Existing sorted\\nalign files are overwritten. This is only\\nnecessary if the temp directory is used\\nmore than once for new alignments. In\\ngeneral, this is not recommended for most\\napplications. [Default: false (only sort if\\nno sorted files exist)]"
    max_soft_clip_ratio: "Maximal relative length of the front\\nsoftclip (only relevant during output)\\n[Default: 0.2]\\nFurther explanation:\\nHiLive uses an approach that requires one\\nexact match of a k-mer at the beginning of\\nan alignment. This can lead to unaligned\\nregions at the beginning of the read which\\nwe report as 'softclips'. With this\\nparameter, you can control the maximal\\nlength of this region."
    arg_path_hilive: "[ --index ] arg                Path to the HiLive index. Please use the\\nexecutable 'hilive-build' to create a new\\nHiLive index that is delivered with this\\nprogram. The index consists of several\\nfiles with the same prefix. Please include\\nthe file prefix when specifying the index\\nlocation."
    arg_alignment_mode: "[ --align-mode ] arg           Alignment mode to balance speed and\\naccuracy [very-fast|fast|balanced|accurate|\\nvery-accurate]. This selected mode\\nautomatically sets other parameters.\\nIndividually configured parameters are\\nprioritized over settings made by selecting\\nan alignment mode. [Default: balanced]"
    anchor_length: "Length of the alignment anchor (or initial\\nseed) [Default: set by the selected\\nalignment mode]"
    error_interval: "The interval to tolerate more errors during\\nalignment (low=accurate; great=fast).\\n[Default: 'anchor-length'/2]"
    seeding_interval: "The interval to create new seeds\\n(low=accurate; great=fast). [Default:\\n'anchor-length'/2]"
    max_soft_clip_length: "The maximum length of a front softclip when\\ncreating new seeds. In contrast to\\n--max-softclip-ratio, this parameter may\\nhave effects on runtime and mapping\\naccuracy. [Default: 'readlength/2]"
    barcode_errors: "The number of errors that are tolerated for\\nthe barcode segments. A single value can be\\nprovided to be applied for all barcode\\nsegments. Alternatively, the value can be\\nset for each segment individually.\\n[Default: 1]\\nExample:\\n--barcode-errors 2 [2 errors for all\\nbarcode segments]\\n--barcode-errors 2,1 [2 errors for the\\nfirst, 1 error for the second segment]"
    align_undetermined_barcodes: "Align all barcodes. Reads with a barcode\\nthat don't match one of the barcodes\\nspecified with '--barcodes' will be\\nreported as undetermined. [Default: false]"
    min_base_call_quality: "Minimum basecall quality for a nucleotide\\nto be considered as a match [Default: 1\\n(everything but N-calls)]"
    keep_invalid_sequences: "Keep sequences of invalid reads, i.e. with\\nunconsidered barcode or filtered by the\\nsequencer. This option must be activated to\\nreport unmapped reads. [Default: false]"
    arg_minimum_alignment: "[ --min-as ] arg               Minimum alignment score. [Default: Set\\nautomatically based on the alignment mode\\nand match/mismatch scores]"
    match_score: "Score for a match. [Default: 0]"
    mismatch_penalty: "Penalty for a mismatch. [Default: 6]"
    insertion_opening_penalty: "Penalty for insertion opening. [Default: 5]"
    insertion_extension_penalty: "Penalty for insertion extension. [Default:\\n3]"
    deletion_opening_penalty: "Penalty for deletion opening. [Default: 5]"
    deletion_extension_penalty: "Penalty for deletion extension. [Default:\\n3]"
    max_gap_length: "Maximal permitted consecutive gap length.\\nIncreasing this parameter may lead to\\nhighly increased runtime! [Default: 3]"
    soft_clip_opening_penalty: "Penalty for softclip opening (only relevant\\nduring output). [Default:\\n'mismatch-penalty']"
    soft_clip_extension_penalty: "Penalty for softclip extension (only\\nrelevant during output). [Default:\\n'mismatch-penalty'/'anchor-length']"
    temp_dir: "Temporary directory to store the alignment\\nfiles and hilive_config.ini. [Default:\\n./temp]"
    arg_keep_files: "[ --keep-files ] arg           Keep intermediate alignment files for these\\ncycles. The last cycle is always kept.\\n[Default: Keep files of output cycles]\\nFurther Explanations:\\nHiLive comes with a separated executable\\n'hilive-out'. This executable can be used\\nto produce alignment files in SAM or BAM\\nformat from existing temporary files. Thus,\\noutput can only be created for cycles for\\nthat keeping the temporary alignment files\\nis activated. Temporary alignemnt files are\\nalso needed if an interrupted run is\\ncontinued with the '--continue' parameter."
    keep_intermediate_files: "[ --keep-all-files ]           Keep all intermediate alignment files. This\\noption may lead to huge disk space\\nrequirements. [Default: false]"
    block_size: "Block size for the alignment input/output\\nstream in Bytes. Append 'K' or 'M' to\\nspecify in Kilobytes or Megabytes,\\nrespectively. [Default: 64M]\\nExample:\\n--block-size 1024 [1024 bytes]\\n--block-size 64K [64 Kilobytes]\\n--block-size 64M [64 Megabytes]"
    compression: "Compression of temporary alignment files.\\n[Default: LZ4]\\n0: no compression.\\n1: Deflate (smaller).\\n2: LZ4 (faster)."
    arg_number_spawn: "[ --num-threads ] arg          Number of threads to spawn (including\\noutput threads). [Default: 1]"
    arg_maximum_number: "[ --num-out-threads ] arg      Maximum number of threads to use for\\noutput. More threads may be used for output\\nautomatically if threads are idle.\\n[Default: 'num-threads'/2]\\n"
    config: ""
    run_info_dot_xml_dot: "--instrument-id arg               ID of the sequencing machine. Should be "
  }
  output {
    File out_stdout = stdout()
    File out_arg_path_directory = "${in_arg_path_directory}"
    Directory out_force_resort = "${in_force_resort}"
  }
}