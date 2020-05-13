class: CommandLineTool
id: patholive.cwl
inputs:
- id: bcl_dir
  doc: Illumina BaseCalls directory which contains the sequence information of the
    reads.
  type: string
  inputBinding:
    prefix: --bcl_dir
- id: index
  doc: Reference index directory for HiLive2.
  type: string
  inputBinding:
    prefix: --index
- id: reads
  doc: 'Length and types of the read segments. Each segment is either a read (R) or
    a barcode (B). Please give the segments in the correct order as they are produced
    by the sequencing machine. [Example: 101R,8B,8B,101R]'
  type: string
  inputBinding:
    prefix: --reads
- id: out_cycles
  doc: Cycles to create output for.
  type: string
  inputBinding:
    prefix: --out_cycles
- id: out_dir
  doc: Output directory.
  type: string
  inputBinding:
    prefix: --out_dir
- id: max_soft_clip_ratio
  doc: 'Maximal relative length of the front softclip (only relevant during output)
    [Default: 0.2]'
  type: long
  inputBinding:
    prefix: --max_softclip_ratio
- id: hi_live
  doc: Path to hilive executable
  type: string
  inputBinding:
    prefix: --hilive
- id: num_threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --num_threads
- id: align_mode
  doc: Alignment mode to balance speed and accuracy [very- fast|fast|balanced|accurate|very-accurate].
  type: string
  inputBinding:
    prefix: --align_mode
- id: out_mode
  doc: 'The output mode. [Default: ANYBEST]. [ALL|A]: Report all found alignments.
    [BESTN#|N#]: Report the # best found alignments. [ALLBEST|H]: Report all found
    alignments with the best score. [ANYBEST|B]: Report one best alignment. [UNIQUE|U]:
    Report only unique alignments.'
  type: string
  inputBinding:
    prefix: --out_mode
- id: out_format
  doc: 'Set the output format [Default: BAM]. [SAM]: SAM output. [BAM]: BAM output.'
  type: string
  inputBinding:
    prefix: --out_format
- id: verbose
  doc: 'Print output of HiLive. Default: False'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: lanes
  doc: Lanes to be used for mapping, [Default = automatic detection]
  type: string
  inputBinding:
    prefix: --lanes
- id: tiles
  doc: 'Number of tiles [Default: automatic detection]'
  type: string
  inputBinding:
    prefix: --tiles
- id: max_tile
  doc: Specify the highest tile number. The tile numbers will be computed by this
    number, considering the correct surface count, swath count and tile count for
    Illumina sequencing.
  type: long
  inputBinding:
    prefix: --max_tile
- id: config
  doc: Path to a config file for HiLive2. This enables to use advanced alignment settings
    that can not be set with the available PathoLive parameters.
  type: string
  inputBinding:
    prefix: --config
outputs: []
cwlVersion: v1.1
baseCommand:
- patholive
