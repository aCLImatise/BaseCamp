version 1.0

task Hilive {
  input {
    Boolean? illuminas_basecalls_directory
    Boolean? path_hilive_index
    Boolean? length_types_read
    Boolean? print_license_information
    Boolean? arg_path_config
    String? run_info
    String? continue
    Boolean? var_7
    Boolean? 
    Boolean? example_b_accgattgatgttgac
    String? run_id
    String? flow_cell_id
    String? instrument_id
    Boolean? var_13
    Boolean? f
    Boolean? var_15
    Boolean? report_only_alignments
    Boolean? report_unmapped
    Boolean? extended_cigar
    Boolean? force_resort
    String? max_soft_clip_ratio
    Boolean? var_21
    String? anchor_length
    String? error_interval
    String? seeding_interval
    String? max_soft_clip_length
    String? barcode_errors
    Boolean? align_undetermined_barcodes
    String? min_base_call_quality
    Boolean? keep_invalid_sequences
    Boolean? s
    String? match_score
    String? mismatch_penalty
    String? insertion_opening_penalty
    String? insertion_extension_penalty
    String? deletion_opening_penalty
    String? deletion_extension_penalty
    String? max_gap_length
    String? soft_clip_opening_penalty
    String? soft_clip_extension_penalty
    String? temp_dir
    Boolean? further_explanations_hilive
    Boolean? var_42
    String? block_size
    String? compression
    Boolean? var_45
    Boolean? var_46
  }
  command <<<
    hilive \
      ~{true="-b" false="" illuminas_basecalls_directory} \
      ~{true="-i" false="" path_hilive_index} \
      ~{true="-r" false="" length_types_read} \
      ~{true="-l" false="" print_license_information} \
      ~{true="-c" false="" arg_path_config} \
      ~{if defined(run_info) then ("--runinfo " +  '"' + run_info + '"') else ""} \
      ~{if defined(continue) then ("--continue " +  '"' + continue + '"') else ""} \
      ~{true="-t" false="" var_7} \
      ~{true="-T" false="" } \
      ~{true="-B" false="" example_b_accgattgatgttgac} \
      ~{if defined(run_id) then ("--run-id " +  '"' + run_id + '"') else ""} \
      ~{if defined(flow_cell_id) then ("--flowcell-id " +  '"' + flow_cell_id + '"') else ""} \
      ~{if defined(instrument_id) then ("--instrument-id " +  '"' + instrument_id + '"') else ""} \
      ~{true="-o" false="" var_13} \
      ~{true="-f" false="" f} \
      ~{true="-O" false="" var_15} \
      ~{true="-M" false="" report_only_alignments} \
      ~{true="--report-unmapped" false="" report_unmapped} \
      ~{true="--extended-cigar" false="" extended_cigar} \
      ~{true="--force-resort" false="" force_resort} \
      ~{if defined(max_soft_clip_ratio) then ("--max-softclip-ratio " +  '"' + max_soft_clip_ratio + '"') else ""} \
      ~{true="-m" false="" var_21} \
      ~{if defined(anchor_length) then ("--anchor-length " +  '"' + anchor_length + '"') else ""} \
      ~{if defined(error_interval) then ("--error-interval " +  '"' + error_interval + '"') else ""} \
      ~{if defined(seeding_interval) then ("--seeding-interval " +  '"' + seeding_interval + '"') else ""} \
      ~{if defined(max_soft_clip_length) then ("--max-softclip-length " +  '"' + max_soft_clip_length + '"') else ""} \
      ~{if defined(barcode_errors) then ("--barcode-errors " +  '"' + barcode_errors + '"') else ""} \
      ~{true="--align-undetermined-barcodes" false="" align_undetermined_barcodes} \
      ~{if defined(min_base_call_quality) then ("--min-basecall-quality " +  '"' + min_base_call_quality + '"') else ""} \
      ~{true="--keep-invalid-sequences" false="" keep_invalid_sequences} \
      ~{true="-s" false="" s} \
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
      ~{true="-k" false="" further_explanations_hilive} \
      ~{true="-K" false="" var_42} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""} \
      ~{true="-n" false="" var_45} \
      ~{true="-N" false="" var_46}
  >>>
  parameter_meta {
    illuminas_basecalls_directory: "[--bcl-dir]        Illumina's BaseCalls directory which contains the sequence information of the reads."
    path_hilive_index: "[--index]          Path to the HiLive index."
    length_types_read: "[--reads]          Length and types of the read segments."
    print_license_information: "[ --license ]                  Print license information and exit."
    arg_path_config: "[ --config ] arg               Path to a config file. Config file is in  .ini format. Duplicate keys are not  permitted. Instead, use comma-separated  lists. Parameters obtained from the command line are prioritized over settings made in  the config file. Example for a config.ini: bcl-dir=./BaseCalls lanes=1 out-cycle=50,100"
    run_info: "Path to Illumina's runInfo.xml file. If  specified, read lengths, lane count and  tile count are automatically set in  accordance with the sequencing run.  Parameters obtained from the command line  or config file are prioritized over  settings obtained from the runInfo.xml."
    continue: "Continue an interrupted HiLive run from a  specified cycle. We strongly recommend to  load the config file that was automatically created for the original run to continue  with identical settings. This config file  (hilive_config.ini) can be found in the  temporary directory specified with  --temp-dir."
    var_7: "[ --tiles ] arg                Specify the tiles to be considered for read alignment. [Default: [1-2][1-3][01-16] (96  tiles)]"
    : "[ --max-tile ] arg             Specify the highest tile number. The tile  numbers will be computed by this number,  considering the correct surface count,  swath count and tile count for Illumina  sequencing. This parameter serves as a shortcut for  --tiles. Example: --max-tile 2216 will activate all tiles in  [1-2][1-2][01-16]."
    example_b_accgattgatgttgac: "[ --barcodes ] arg             Barcode(s) of the sample(s) to be  considered for read alignment. Barcodes  must match the barcode length(s) as  specified with --reads. Delimit different  segments of the same barcodes by '-' and  different barcodes by ','. [Default: All  barcodes] Example: -b ACCG-ATTG,ATGT-TGAC for two different barcodes of length 2x4bp."
    run_id: "ID of the sequencing run. Should be  obtained from runInfo.xml."
    flow_cell_id: "ID of the flowcell. Should be obtained from runInfo.xml."
    instrument_id: "ID of the sequencing machine. Should be  obtained from runInfo.xml."
    var_13: "[ --out-dir ] arg              Path to the directory that is used for the  output files. The directory will be created if it does not exist. [Default: ./out]"
    f: "[ --out-format ] arg           Format of the output files. Currently, SAM  and BAM format are supported. [Default:  BAM]"
    var_15: "[ --out-cycles ] arg           Cycles for that alignment output is  written. The respective temporary files are kept. [Default: write only after the last  cycle]"
    report_only_alignments: "[ --out-mode ] arg             The output mode. [Default: ANYBEST] [ALL|A]: Report all found alignments. [BESTN#|N#]: Report the # best found  alignments. [ALLBEST|H]: Report all found alignments  with the best score. [ANYBEST|B]: Report one best alignment. [UNIQUE|U]: Report only unique alignments."
    report_unmapped: "Activate reporting unmapped reads.  [Default: false]"
    extended_cigar: "Activate extended CIGAR format for the  alignment output files ('=' for matches and 'X' for mismatches instead of using 'M' for both). [Default: false]"
    force_resort: "Always sort temporary alignment files  before writing output. Existing sorted  align files are overwritten. This is only  necessary if the temp directory is used  more than once for new alignments. In  general, this is not recommended for most  applications. [Default: false (only sort if no sorted files exist)]"
    max_soft_clip_ratio: "Maximal relative length of the front  softclip (only relevant during output)  [Default: 0.2] Further explanation: HiLive uses an approach that requires one  exact match of a k-mer at the beginning of  an alignment. This can lead to unaligned  regions at the beginning of the read which  we report as 'softclips'. With this  parameter, you can control the maximal  length of this region."
    var_21: "[ --align-mode ] arg           Alignment mode to balance speed and  accuracy [very-fast|fast|balanced|accurate| very-accurate]. This selected mode  automatically sets other parameters.  Individually configured parameters are  prioritized over settings made by selecting an alignment mode. [Default: balanced]"
    anchor_length: "Length of the alignment anchor (or initial  seed) [Default: set by the selected  alignment mode]"
    error_interval: "The interval to tolerate more errors during alignment (low=accurate; great=fast).  [Default: 'anchor-length'/2]"
    seeding_interval: "The interval to create new seeds  (low=accurate; great=fast). [Default:  'anchor-length'/2]"
    max_soft_clip_length: "The maximum length of a front softclip when creating new seeds. In contrast to  --max-softclip-ratio, this parameter may  have effects on runtime and mapping  accuracy. [Default: 'readlength/2]"
    barcode_errors: "The number of errors that are tolerated for the barcode segments. A single value can be provided to be applied for all barcode  segments. Alternatively, the value can be  set for each segment individually.  [Default: 1] Example: --barcode-errors 2 [2 errors for all  barcode segments] --barcode-errors 2,1 [2 errors for the  first, 1 error for the second segment]"
    align_undetermined_barcodes: "Align all barcodes. Reads with a barcode  that don't match one of the barcodes  specified with '--barcodes' will be  reported as undetermined. [Default: false]"
    min_base_call_quality: "Minimum basecall quality for a nucleotide  to be considered as a match [Default: 1  (everything but N-calls)]"
    keep_invalid_sequences: "Keep sequences of invalid reads, i.e. with  unconsidered barcode or filtered by the  sequencer. This option must be activated to report unmapped reads. [Default: false]"
    s: "[ --min-as ] arg               Minimum alignment score. [Default: Set  automatically based on the alignment mode  and match/mismatch scores]"
    match_score: "Score for a match. [Default: 0]"
    mismatch_penalty: "Penalty for a mismatch. [Default: 6]"
    insertion_opening_penalty: "Penalty for insertion opening. [Default: 5]"
    insertion_extension_penalty: "Penalty for insertion extension. [Default:  3]"
    deletion_opening_penalty: "Penalty for deletion opening. [Default: 5]"
    deletion_extension_penalty: "Penalty for deletion extension. [Default:  3]"
    max_gap_length: "Maximal permitted consecutive gap length.  Increasing this parameter may lead to  highly increased runtime! [Default: 3]"
    soft_clip_opening_penalty: "Penalty for softclip opening (only relevant during output). [Default:  'mismatch-penalty']"
    soft_clip_extension_penalty: "Penalty for softclip extension (only  relevant during output). [Default:  'mismatch-penalty'/'anchor-length']"
    temp_dir: "Temporary directory to store the alignment  files and hilive_config.ini. [Default:  ./temp]"
    further_explanations_hilive: "[ --keep-files ] arg           Keep intermediate alignment files for these cycles. The last cycle is always kept.  [Default: Keep files of output cycles] Further Explanations: HiLive comes with a separated executable  'hilive-out'. This executable can be used  to produce alignment files in SAM or BAM  format from existing temporary files. Thus, output can only be created for cycles for  that keeping the temporary alignment files  is activated. Temporary alignemnt files are also needed if an interrupted run is  continued with the '--continue' parameter."
    var_42: "[ --keep-all-files ]           Keep all intermediate alignment files. This option may lead to huge disk space  requirements. [Default: false]"
    block_size: "Block size for the alignment input/output  stream in Bytes. Append 'K' or 'M' to  specify in Kilobytes or Megabytes,  respectively. [Default: 64M] Example: --block-size 1024 [1024 bytes] --block-size 64K [64 Kilobytes] --block-size 64M [64 Megabytes]"
    compression: "Compression of temporary alignment files.  [Default: LZ4] 0: no compression. 1: Deflate (smaller). 2: LZ4 (faster)."
    var_45: "[ --num-threads ] arg          Number of threads to spawn (including  output threads). [Default: 1]"
    var_46: "[ --num-out-threads ] arg      Maximum number of threads to use for  output. More threads may be used for output automatically if threads are idle.  [Default: 'num-threads'/2]"
  }
}