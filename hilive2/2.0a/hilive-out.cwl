#!/usr/bin/env cwl-runner

baseCommand:
- hilive-out
class: CommandLineTool
cwlVersion: v1.0
id: hilive-out
inputs:
- doc: "[ --config ] Path to a HiLive config file (in general, this should be 'hilive_config.ini'\
    \ which is created in the temp directory of the respective run)"
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --license ]                  Print license information and exit.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --config ] arg               Path to a config file. Config file is in  .ini
    format. Duplicate keys are not  permitted. Instead, use comma-separated  lists.
    Parameters obtained from the command line are prioritized over settings made in  the
    config file. Example for a config.ini: bcl-dir=./BaseCalls lanes=1 out-cycle=50,100'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Path to Illumina's runInfo.xml file. If  specified, read lengths, lane count
    and  tile count are automatically set in  accordance with the sequencing run.  Parameters
    obtained from the command line  or config file are prioritized over  settings
    obtained from the runInfo.xml.
  id: run_info
  inputBinding:
    prefix: --runinfo
  type: string
- doc: Continue an interrupted HiLive run from a  specified cycle. We strongly recommend
    to  load the config file that was automatically created for the original run to
    continue  with identical settings. This config file  (hilive_config.ini) can be
    found in the  temporary directory specified with  --temp-dir.
  id: continue
  inputBinding:
    prefix: --continue
  type: string
- doc: "[ --bcl-dir ] arg              Illumina's BaseCalls directory which  contains\
    \ the sequence information of the  reads."
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --lanes ] arg                Specify the lanes to be considered for read
    alignment. [Default: 1-8]'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --tiles ] arg                Specify the tiles to be considered for read
    alignment. [Default: [1-2][1-3][01-16] (96  tiles)]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --max-tile ] arg             Specify the highest tile number. The tile  numbers
    will be computed by this number,  considering the correct surface count,  swath
    count and tile count for Illumina  sequencing. This parameter serves as a shortcut
    for  --tiles. Example: --max-tile 2216 will activate all tiles in  [1-2][1-2][01-16].'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: "[ --reads ] arg                Length and types of the read segments. Each\
    \ segment is either a read ('R') or a barcode ('B'). Please give the segments\
    \ in the  correct order as they are produced by the  sequencing machine. [REQUIRED]\
    \ Example: --reads 101R,8B,8B,101R specifies paired-end sequencing with  2x101bp\
    \ reads and 2x8bp barcodes."
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: "[ --barcodes ] arg             Barcode(s) of the sample(s) to be  considered\
    \ for read alignment. Barcodes  must match the barcode length(s) as  specified\
    \ with --reads. Delimit different  segments of the same barcodes by '-' and  different\
    \ barcodes by ','. [Default: All  barcodes] Example: -b ACCG-ATTG,ATGT-TGAC for\
    \ two different barcodes of length 2x4bp."
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: ID of the sequencing run. Should be  obtained from runInfo.xml.
  id: run_id
  inputBinding:
    prefix: --run-id
  type: string
- doc: ID of the flowcell. Should be obtained from runInfo.xml.
  id: flow_cell_id
  inputBinding:
    prefix: --flowcell-id
  type: string
- doc: ID of the sequencing machine. Should be  obtained from runInfo.xml.
  id: instrument_id
  inputBinding:
    prefix: --instrument-id
  type: string
- doc: '[ --out-dir ] arg              Path to the directory that is used for the  output
    files. The directory will be created if it does not exist. [Default: ./out]'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --out-format ] arg           Format of the output files. Currently, SAM  and
    BAM format are supported. [Default:  BAM]'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --out-cycles ] arg           Cycles for that alignment output is  written.
    The respective temporary files are kept. [Default: write only after the last  cycle]'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: '[ --out-mode ] arg             The output mode. [Default: ANYBEST] [ALL|A]:
    Report all found alignments. [BESTN#|N#]: Report the # best found  alignments.
    [ALLBEST|H]: Report all found alignments  with the best score. [ANYBEST|B]: Report
    one best alignment. [UNIQUE|U]: Report only unique alignments.'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: 'Activate reporting unmapped reads.  [Default: false]'
  id: report_unmapped
  inputBinding:
    prefix: --report-unmapped
  type: boolean
- doc: "Activate extended CIGAR format for the  alignment output files ('=' for matches\
    \ and 'X' for mismatches instead of using 'M' for both). [Default: false]"
  id: extended_cigar
  inputBinding:
    prefix: --extended-cigar
  type: boolean
- doc: 'Always sort temporary alignment files  before writing output. Existing sorted  align
    files are overwritten. This is only  necessary if the temp directory is used  more
    than once for new alignments. In  general, this is not recommended for most  applications.
    [Default: false (only sort if no sorted files exist)]'
  id: force_resort
  inputBinding:
    prefix: --force-resort
  type: boolean
- doc: "Maximal relative length of the front  softclip (only relevant during output)\
    \  [Default: 0.2] Further explanation: HiLive uses an approach that requires one\
    \  exact match of a k-mer at the beginning of  an alignment. This can lead to\
    \ unaligned  regions at the beginning of the read which  we report as 'softclips'.\
    \ With this  parameter, you can control the maximal  length of this region."
  id: max_soft_clip_ratio
  inputBinding:
    prefix: --max-softclip-ratio
  type: string
- doc: "[ --index ] arg                Path to the HiLive index. Please use the  executable\
    \ 'hilive-build' to create a new  HiLive index that is delivered with this  program.\
    \ The index consists of several  files with the same prefix. Please include  the\
    \ file prefix when specifying the index  location."
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --align-mode ] arg           Alignment mode to balance speed and  accuracy
    [very-fast|fast|balanced|accurate| very-accurate]. This selected mode  automatically
    sets other parameters.  Individually configured parameters are  prioritized over
    settings made by selecting an alignment mode. [Default: balanced]'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: 'Length of the alignment anchor (or initial  seed) [Default: set by the selected  alignment
    mode]'
  id: anchor_length
  inputBinding:
    prefix: --anchor-length
  type: string
- doc: "The interval to tolerate more errors during alignment (low=accurate; great=fast).\
    \  [Default: 'anchor-length'/2]"
  id: error_interval
  inputBinding:
    prefix: --error-interval
  type: string
- doc: "The interval to create new seeds  (low=accurate; great=fast). [Default:  'anchor-length'/2]"
  id: seeding_interval
  inputBinding:
    prefix: --seeding-interval
  type: string
- doc: "The maximum length of a front softclip when creating new seeds. In contrast\
    \ to  --max-softclip-ratio, this parameter may  have effects on runtime and mapping\
    \  accuracy. [Default: 'readlength/2]"
  id: max_soft_clip_length
  inputBinding:
    prefix: --max-softclip-length
  type: string
- doc: 'The number of errors that are tolerated for the barcode segments. A single
    value can be provided to be applied for all barcode  segments. Alternatively,
    the value can be  set for each segment individually.  [Default: 1] Example: --barcode-errors
    2 [2 errors for all  barcode segments] --barcode-errors 2,1 [2 errors for the  first,
    1 error for the second segment]'
  id: barcode_errors
  inputBinding:
    prefix: --barcode-errors
  type: string
- doc: "Align all barcodes. Reads with a barcode  that don't match one of the barcodes\
    \  specified with '--barcodes' will be  reported as undetermined. [Default: false]"
  id: align_undetermined_barcodes
  inputBinding:
    prefix: --align-undetermined-barcodes
  type: boolean
- doc: 'Minimum basecall quality for a nucleotide  to be considered as a match [Default:
    1  (everything but N-calls)]'
  id: min_base_call_quality
  inputBinding:
    prefix: --min-basecall-quality
  type: string
- doc: 'Keep sequences of invalid reads, i.e. with  unconsidered barcode or filtered
    by the  sequencer. This option must be activated to report unmapped reads. [Default:
    false]'
  id: keep_invalid_sequences
  inputBinding:
    prefix: --keep-invalid-sequences
  type: boolean
- doc: '[ --min-as ] arg               Minimum alignment score. [Default: Set  automatically
    based on the alignment mode  and match/mismatch scores]'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: 'Score for a match. [Default: 0]'
  id: match_score
  inputBinding:
    prefix: --match-score
  type: string
- doc: 'Penalty for a mismatch. [Default: 6]'
  id: mismatch_penalty
  inputBinding:
    prefix: --mismatch-penalty
  type: string
- doc: 'Penalty for insertion opening. [Default: 5]'
  id: insertion_opening_penalty
  inputBinding:
    prefix: --insertion-opening-penalty
  type: string
- doc: 'Penalty for insertion extension. [Default:  3]'
  id: insertion_extension_penalty
  inputBinding:
    prefix: --insertion-extension-penalty
  type: string
- doc: 'Penalty for deletion opening. [Default: 5]'
  id: deletion_opening_penalty
  inputBinding:
    prefix: --deletion-opening-penalty
  type: string
- doc: 'Penalty for deletion extension. [Default:  3]'
  id: deletion_extension_penalty
  inputBinding:
    prefix: --deletion-extension-penalty
  type: string
- doc: 'Maximal permitted consecutive gap length.  Increasing this parameter may lead
    to  highly increased runtime! [Default: 3]'
  id: max_gap_length
  inputBinding:
    prefix: --max-gap-length
  type: string
- doc: "Penalty for softclip opening (only relevant during output). [Default:  'mismatch-penalty']"
  id: soft_clip_opening_penalty
  inputBinding:
    prefix: --softclip-opening-penalty
  type: string
- doc: "Penalty for softclip extension (only  relevant during output). [Default: \
    \ 'mismatch-penalty'/'anchor-length']"
  id: soft_clip_extension_penalty
  inputBinding:
    prefix: --softclip-extension-penalty
  type: string
- doc: 'Temporary directory to store the alignment  files and hilive_config.ini. [Default:  ./temp]'
  id: temp_dir
  inputBinding:
    prefix: --temp-dir
  type: string
- doc: "[ --keep-files ] arg           Keep intermediate alignment files for these\
    \ cycles. The last cycle is always kept.  [Default: Keep files of output cycles]\
    \ Further Explanations: HiLive comes with a separated executable  'hilive-out'.\
    \ This executable can be used  to produce alignment files in SAM or BAM  format\
    \ from existing temporary files. Thus, output can only be created for cycles for\
    \  that keeping the temporary alignment files  is activated. Temporary alignemnt\
    \ files are also needed if an interrupted run is  continued with the '--continue'\
    \ parameter."
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '[ --keep-all-files ]           Keep all intermediate alignment files. This
    option may lead to huge disk space  requirements. [Default: false]'
  id: k
  inputBinding:
    prefix: -K
  type: boolean
- doc: "Block size for the alignment input/output  stream in Bytes. Append 'K' or\
    \ 'M' to  specify in Kilobytes or Megabytes,  respectively. [Default: 64M] Example:\
    \ --block-size 1024 [1024 bytes] --block-size 64K [64 Kilobytes] --block-size\
    \ 64M [64 Megabytes]"
  id: block_size
  inputBinding:
    prefix: --block-size
  type: string
- doc: 'Compression of temporary alignment files.  [Default: LZ4] 0: no compression.
    1: Deflate (smaller). 2: LZ4 (faster).'
  id: compression
  inputBinding:
    prefix: --compression
  type: string
- doc: '[ --num-threads ] arg          Number of threads to spawn (including  output
    threads). [Default: 1]'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: "[ --num-out-threads ] arg      Maximum number of threads to use for  output.\
    \ More threads may be used for output automatically if threads are idle.  [Default:\
    \ 'num-threads'/2]"
  id: n
  inputBinding:
    prefix: -N
  type: boolean
