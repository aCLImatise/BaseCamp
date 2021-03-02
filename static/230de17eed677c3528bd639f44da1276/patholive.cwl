class: CommandLineTool
id: patholive.cwl
inputs:
- id: in_bcl_dir
  doc: "Illumina BaseCalls directory which contains the\nsequence information of the\
    \ reads."
  type: Directory?
  inputBinding:
    prefix: --bcl_dir
- id: in_index
  doc: Reference index directory for HiLive2.
  type: Directory?
  inputBinding:
    prefix: --index
- id: in_reads
  doc: "Length and types of the read segments. Each segment is\neither a read (R)\
    \ or a barcode (B). Please give the\nsegments in the correct order as they are\
    \ produced by\nthe sequencing machine. [Example: 101R,8B,8B,101R]"
  type: long?
  inputBinding:
    prefix: --reads
- id: in_out_cycles
  doc: Cycles to create output for.
  type: string?
  inputBinding:
    prefix: --out_cycles
- id: in_out_dir
  doc: Output directory.
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_max_soft_clip_ratio
  doc: "Maximal relative length of the front softclip (only\nrelevant during output)\
    \ [Default: 0.2]"
  type: long?
  inputBinding:
    prefix: --max_softclip_ratio
- id: in_hi_live
  doc: Path to hilive executable
  type: File?
  inputBinding:
    prefix: --hilive
- id: in_num_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_align_mode
  doc: "Alignment mode to balance speed and accuracy [very-\nfast|fast|balanced|accurate|very-accurate]."
  type: string?
  inputBinding:
    prefix: --align_mode
- id: in_out_mode
  doc: "The output mode. [Default: ANYBEST]. [ALL|A]: Report\nall found alignments.\
    \ [BESTN#|N#]: Report the # best\nfound alignments. [ALLBEST|H]: Report all found\n\
    alignments with the best score. [ANYBEST|B]: Report\none best alignment. [UNIQUE|U]:\
    \ Report only unique\nalignments."
  type: string?
  inputBinding:
    prefix: --out_mode
- id: in_out_format
  doc: "Set the output format [Default: BAM]. [SAM]: SAM\noutput. [BAM]: BAM output."
  type: string?
  inputBinding:
    prefix: --out_format
- id: in_verbose
  doc: 'Print output of HiLive. Default: False'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_lanes
  doc: "Lanes to be used for mapping, [Default = automatic\ndetection]"
  type: string?
  inputBinding:
    prefix: --lanes
- id: in_tiles
  doc: 'Number of tiles [Default: automatic detection]'
  type: long?
  inputBinding:
    prefix: --tiles
- id: in_max_tile
  doc: "Specify the highest tile number. The tile numbers will\nbe computed by this\
    \ number, considering the correct\nsurface count, swath count and tile count for\
    \ Illumina\nsequencing."
  type: long?
  inputBinding:
    prefix: --max_tile
- id: in_config
  doc: "Path to a config file for HiLive2. This enables to use\nadvanced alignment\
    \ settings that can not be set with\nthe available PathoLive parameters.\n"
  type: File?
  inputBinding:
    prefix: --config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- patholive
