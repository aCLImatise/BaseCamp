class: CommandLineTool
id: hilive_out.cwl
inputs:
- id: in_path_hilive_config
  doc: "[ --config ]\nPath to a HiLive config file (in general, this should be\n'hilive_config.ini'\
    \ which is created in the temp directory of the\nrespective run)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_print_license_information
  doc: '[ --license ]                  Print license information and exit.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_run_info
  doc: "Path to Illumina's runInfo.xml file. If\nspecified, read lengths, lane count\
    \ and\ntile count are automatically set in\naccordance with the sequencing run.\n\
    Parameters obtained from the command line\nor config file are prioritized over\n\
    settings obtained from the runInfo.xml."
  type: File
  inputBinding:
    prefix: --runinfo
- id: in_continue
  doc: "Continue an interrupted HiLive run from a\nspecified cycle. We strongly recommend\
    \ to\nload the config file that was automatically\ncreated for the original run\
    \ to continue\nwith identical settings. This config file\n(hilive_config.ini)\
    \ can be found in the\ntemporary directory specified with\n--temp-dir."
  type: File
  inputBinding:
    prefix: --continue
- id: in_arg_illuminas_basecalls
  doc: "[ --bcl-dir ] arg              Illumina's BaseCalls directory which\ncontains\
    \ the sequence information of the\nreads."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_arg_specify_considered
  doc: "[ --tiles ] arg                Specify the tiles to be considered for read\n\
    alignment. [Default: [1-2][1-3][01-16] (96\ntiles)]"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_specify_number
  doc: "[ --max-tile ] arg             Specify the highest tile number. The tile\n\
    numbers will be computed by this number,\nconsidering the correct surface count,\n\
    swath count and tile count for Illumina\nsequencing.\nThis parameter serves as\
    \ a shortcut for\n--tiles.\nExample:\n--max-tile 2216\nwill activate all tiles\
    \ in\n[1-2][1-2][01-16]."
  type: boolean
  inputBinding:
    prefix: -T
- id: in_arg_length_types
  doc: "[ --reads ] arg                Length and types of the read segments. Each\n\
    segment is either a read ('R') or a barcode\n('B'). Please give the segments in\
    \ the\ncorrect order as they are produced by the\nsequencing machine. [REQUIRED]\n\
    Example:\n--reads 101R,8B,8B,101R\nspecifies paired-end sequencing with\n2x101bp\
    \ reads and 2x8bp barcodes."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_barcodes_beconsidered
  doc: "[ --barcodes ] arg             Barcode(s) of the sample(s) to be\nconsidered\
    \ for read alignment. Barcodes\nmust match the barcode length(s) as\nspecified\
    \ with --reads. Delimit different\nsegments of the same barcodes by '-' and\n\
    different barcodes by ','. [Default: All\nbarcodes]\nExample:\n-b ACCG-ATTG,ATGT-TGAC\n\
    for two different barcodes of length 2x4bp."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_run_id
  doc: "ID of the sequencing run. Should be\nobtained from runInfo.xml."
  type: string
  inputBinding:
    prefix: --run-id
- id: in_flow_cell_id
  doc: ID of the flowcell. Should be obtained from
  type: string
  inputBinding:
    prefix: --flowcell-id
- id: in_arg_path_directory
  doc: "[ --out-dir ] arg              Path to the directory that is used for the\n\
    output files. The directory will be created\nif it does not exist. [Default: ./out]"
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_format_output
  doc: "[ --out-format ] arg           Format of the output files. Currently, SAM\n\
    and BAM format are supported. [Default:\nBAM]"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_cycles_alignment
  doc: "[ --out-cycles ] arg           Cycles for that alignment output is\nwritten.\
    \ The respective temporary files are\nkept. [Default: write only after the last\n\
    cycle]"
  type: boolean
  inputBinding:
    prefix: -O
- id: in_report_found_report
  doc: "[ --out-mode ] arg             The output mode. [Default: ANYBEST]\n[ALL|A]:\
    \ Report all found alignments.\n[BESTN#|N#]: Report the # best found\nalignments.\n\
    [ALLBEST|H]: Report all found alignments\nwith the best score.\n[ANYBEST|B]: Report\
    \ one best alignment.\n[UNIQUE|U]: Report only unique alignments."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_report_unmapped
  doc: "Activate reporting unmapped reads.\n[Default: false]"
  type: boolean
  inputBinding:
    prefix: --report-unmapped
- id: in_extended_cigar
  doc: "Activate extended CIGAR format for the\nalignment output files ('=' for matches\
    \ and\n'X' for mismatches instead of using 'M' for\nboth). [Default: false]"
  type: boolean
  inputBinding:
    prefix: --extended-cigar
- id: in_force_resort
  doc: "Always sort temporary alignment files\nbefore writing output. Existing sorted\n\
    align files are overwritten. This is only\nnecessary if the temp directory is\
    \ used\nmore than once for new alignments. In\ngeneral, this is not recommended\
    \ for most\napplications. [Default: false (only sort if\nno sorted files exist)]"
  type: Directory
  inputBinding:
    prefix: --force-resort
- id: in_max_soft_clip_ratio
  doc: "Maximal relative length of the front\nsoftclip (only relevant during output)\n\
    [Default: 0.2]\nFurther explanation:\nHiLive uses an approach that requires one\n\
    exact match of a k-mer at the beginning of\nan alignment. This can lead to unaligned\n\
    regions at the beginning of the read which\nwe report as 'softclips'. With this\n\
    parameter, you can control the maximal\nlength of this region."
  type: long
  inputBinding:
    prefix: --max-softclip-ratio
- id: in_arg_path_hilive
  doc: "[ --index ] arg                Path to the HiLive index. Please use the\n\
    executable 'hilive-build' to create a new\nHiLive index that is delivered with\
    \ this\nprogram. The index consists of several\nfiles with the same prefix. Please\
    \ include\nthe file prefix when specifying the index\nlocation."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_alignment_mode
  doc: "[ --align-mode ] arg           Alignment mode to balance speed and\naccuracy\
    \ [very-fast|fast|balanced|accurate|\nvery-accurate]. This selected mode\nautomatically\
    \ sets other parameters.\nIndividually configured parameters are\nprioritized\
    \ over settings made by selecting\nan alignment mode. [Default: balanced]"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_anchor_length
  doc: "Length of the alignment anchor (or initial\nseed) [Default: set by the selected\n\
    alignment mode]"
  type: long
  inputBinding:
    prefix: --anchor-length
- id: in_error_interval
  doc: "The interval to tolerate more errors during\nalignment (low=accurate; great=fast).\n\
    [Default: 'anchor-length'/2]"
  type: long
  inputBinding:
    prefix: --error-interval
- id: in_seeding_interval
  doc: "The interval to create new seeds\n(low=accurate; great=fast). [Default:\n\
    'anchor-length'/2]"
  type: long
  inputBinding:
    prefix: --seeding-interval
- id: in_max_soft_clip_length
  doc: "The maximum length of a front softclip when\ncreating new seeds. In contrast\
    \ to\n--max-softclip-ratio, this parameter may\nhave effects on runtime and mapping\n\
    accuracy. [Default: 'readlength/2]"
  type: long
  inputBinding:
    prefix: --max-softclip-length
- id: in_barcode_errors
  doc: "The number of errors that are tolerated for\nthe barcode segments. A single\
    \ value can be\nprovided to be applied for all barcode\nsegments. Alternatively,\
    \ the value can be\nset for each segment individually.\n[Default: 1]\nExample:\n\
    --barcode-errors 2 [2 errors for all\nbarcode segments]\n--barcode-errors 2,1\
    \ [2 errors for the\nfirst, 1 error for the second segment]"
  type: long
  inputBinding:
    prefix: --barcode-errors
- id: in_align_undetermined_barcodes
  doc: "Align all barcodes. Reads with a barcode\nthat don't match one of the barcodes\n\
    specified with '--barcodes' will be\nreported as undetermined. [Default: false]"
  type: boolean
  inputBinding:
    prefix: --align-undetermined-barcodes
- id: in_min_base_call_quality
  doc: "Minimum basecall quality for a nucleotide\nto be considered as a match [Default:\
    \ 1\n(everything but N-calls)]"
  type: long
  inputBinding:
    prefix: --min-basecall-quality
- id: in_keep_invalid_sequences
  doc: "Keep sequences of invalid reads, i.e. with\nunconsidered barcode or filtered\
    \ by the\nsequencer. This option must be activated to\nreport unmapped reads.\
    \ [Default: false]"
  type: boolean
  inputBinding:
    prefix: --keep-invalid-sequences
- id: in_arg_minimum_alignment
  doc: "[ --min-as ] arg               Minimum alignment score. [Default: Set\nautomatically\
    \ based on the alignment mode\nand match/mismatch scores]"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_match_score
  doc: 'Score for a match. [Default: 0]'
  type: long
  inputBinding:
    prefix: --match-score
- id: in_mismatch_penalty
  doc: 'Penalty for a mismatch. [Default: 6]'
  type: long
  inputBinding:
    prefix: --mismatch-penalty
- id: in_insertion_opening_penalty
  doc: 'Penalty for insertion opening. [Default: 5]'
  type: long
  inputBinding:
    prefix: --insertion-opening-penalty
- id: in_insertion_extension_penalty
  doc: "Penalty for insertion extension. [Default:\n3]"
  type: long
  inputBinding:
    prefix: --insertion-extension-penalty
- id: in_deletion_opening_penalty
  doc: 'Penalty for deletion opening. [Default: 5]'
  type: long
  inputBinding:
    prefix: --deletion-opening-penalty
- id: in_deletion_extension_penalty
  doc: "Penalty for deletion extension. [Default:\n3]"
  type: long
  inputBinding:
    prefix: --deletion-extension-penalty
- id: in_max_gap_length
  doc: "Maximal permitted consecutive gap length.\nIncreasing this parameter may lead\
    \ to\nhighly increased runtime! [Default: 3]"
  type: long
  inputBinding:
    prefix: --max-gap-length
- id: in_soft_clip_opening_penalty
  doc: "Penalty for softclip opening (only relevant\nduring output). [Default:\n'mismatch-penalty']"
  type: string
  inputBinding:
    prefix: --softclip-opening-penalty
- id: in_soft_clip_extension_penalty
  doc: "Penalty for softclip extension (only\nrelevant during output). [Default:\n\
    'mismatch-penalty'/'anchor-length']"
  type: long
  inputBinding:
    prefix: --softclip-extension-penalty
- id: in_temp_dir
  doc: "Temporary directory to store the alignment\nfiles and hilive_config.ini. [Default:\n\
    ./temp]"
  type: Directory
  inputBinding:
    prefix: --temp-dir
- id: in_arg_keep_files
  doc: "[ --keep-files ] arg           Keep intermediate alignment files for these\n\
    cycles. The last cycle is always kept.\n[Default: Keep files of output cycles]\n\
    Further Explanations:\nHiLive comes with a separated executable\n'hilive-out'.\
    \ This executable can be used\nto produce alignment files in SAM or BAM\nformat\
    \ from existing temporary files. Thus,\noutput can only be created for cycles\
    \ for\nthat keeping the temporary alignment files\nis activated. Temporary alignemnt\
    \ files are\nalso needed if an interrupted run is\ncontinued with the '--continue'\
    \ parameter."
  type: boolean
  inputBinding:
    prefix: -k
- id: in_keep_intermediate_files
  doc: "[ --keep-all-files ]           Keep all intermediate alignment files. This\n\
    option may lead to huge disk space\nrequirements. [Default: false]"
  type: boolean
  inputBinding:
    prefix: -K
- id: in_block_size
  doc: "Block size for the alignment input/output\nstream in Bytes. Append 'K' or\
    \ 'M' to\nspecify in Kilobytes or Megabytes,\nrespectively. [Default: 64M]\nExample:\n\
    --block-size 1024 [1024 bytes]\n--block-size 64K [64 Kilobytes]\n--block-size\
    \ 64M [64 Megabytes]"
  type: long
  inputBinding:
    prefix: --block-size
- id: in_compression
  doc: "Compression of temporary alignment files.\n[Default: LZ4]\n0: no compression.\n\
    1: Deflate (smaller).\n2: LZ4 (faster)."
  type: long
  inputBinding:
    prefix: --compression
- id: in_arg_number_spawn
  doc: "[ --num-threads ] arg          Number of threads to spawn (including\noutput\
    \ threads). [Default: 1]"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_maximum_number
  doc: "[ --num-out-threads ] arg      Maximum number of threads to use for\noutput.\
    \ More threads may be used for output\nautomatically if threads are idle.\n[Default:\
    \ 'num-threads'/2]\n"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_config
  doc: ''
  type: boolean
  inputBinding:
    prefix: --config
- id: in_run_info_dot_xml_dot
  doc: '--instrument-id arg               ID of the sequencing machine. Should be '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_path_directory
  doc: "[ --out-dir ] arg              Path to the directory that is used for the\n\
    output files. The directory will be created\nif it does not exist. [Default: ./out]"
  type: File
  outputBinding:
    glob: $(inputs.in_arg_path_directory)
- id: out_force_resort
  doc: "Always sort temporary alignment files\nbefore writing output. Existing sorted\n\
    align files are overwritten. This is only\nnecessary if the temp directory is\
    \ used\nmore than once for new alignments. In\ngeneral, this is not recommended\
    \ for most\napplications. [Default: false (only sort if\nno sorted files exist)]"
  type: Directory
  outputBinding:
    glob: $(inputs.in_force_resort)
cwlVersion: v1.1
baseCommand:
- hilive-out
