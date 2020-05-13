class: CommandLineTool
id: bigwigCompare.cwl
inputs:
- id: bigwig1
  doc: 'file, -b1 Bigwig file Bigwig file 1. Usually the file for the treatment. (default:
    None)'
  type: string
  inputBinding:
    prefix: --bigwig1
- id: bigwig2
  doc: 'file, -b2 Bigwig file Bigwig file 2. Usually the file for the control. (default:
    None)'
  type: string
  inputBinding:
    prefix: --bigwig2
- id: scale_factors
  doc: 'Set this parameter to multipy the bigwig values by a constant. The format
    is scaleFactor1:scaleFactor2. For example 0.7:1 to scale the first bigwig file
    by 0.7 while not scaling the second bigwig file (default: None)'
  type: string
  inputBinding:
    prefix: --scaleFactors
- id: pseudo_count
  doc: 'A small number to avoid x/0. Only useful together with --operation log2 or
    --operation ratio. You can specify different values as pseudocounts for the numerator
    and the denominator by providing two values (the first value is used as the numerator
    pseudocount and the second the denominator pseudocount). (Default: 1)'
  type: string[]
  inputBinding:
    prefix: --pseudocount
- id: skip_zero_over_zero
  doc: 'Skip bins where BOTH BAM files lack coverage. This is determined BEFORE any
    applicable pseudocount is added. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skipZeroOverZero
- id: operation
  doc: "The default is to output the log2ratio of the two samples. The reciprocal\
    \ ratio returns the the negative of the inverse of the ratio if the ratio is less\
    \ than 0. The resulting values are interpreted as negative fold changes. Instead\
    \ of performing a computation using both files, the scaled signal can alternatively\
    \ be output for the first or second file using the '-- operation first' or '--operation\
    \ second' (Default: log2)"
  type: string
  inputBinding:
    prefix: --operation
- id: skip_noncovered_regions
  doc: 'This parameter determines if non-covered regions (regions without a score)
    in the bigWig files should be skipped. The default is to treat those regions as
    having a value of zero. The decision to skip non- covered regions depends on the
    interpretation of the data. Non-covered regions in a bigWig file may represent
    repetitive regions that should be skipped. Alternatively, the interpretation of
    non-covered regions as zeros may be wrong and this option should be used (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --skipNonCoveredRegions
- id: number_of_processors
  doc: 'Number of processors to use. Type "max/2" to use half the maximum number of
    processors or "max" to use all available processors. (Default: 1)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: verbose
  doc: 'Set to see processing messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: out_filename
  doc: 'Output file name. (default: None)'
  type: File
  inputBinding:
    prefix: --outFileName
- id: out_file_format
  doc: 'Output file type. Either "bigwig" or "bedgraph". (default: bigwig)'
  type: string
  inputBinding:
    prefix: --outFileFormat
- id: deep_blue_url
  doc: 'For remote files bedgraph/wiggle files hosted on deepBlue, this specifies
    the server URL. The default is "http://deepblue.mpi-inf.mpg.de/xmlrpc", which
    should not be changed without good reason. (default: http://deepblue.mpi-inf.mpg.de/xmlrpc)'
  type: string
  inputBinding:
    prefix: --deepBlueURL
- id: user_key
  doc: 'For remote files bedgraph/wiggle files hosted on deepBlue, this specifies
    the user key to use for access. The default is "anonymous_key", which suffices
    for public datasets. If you need access to a restricted access/private dataset,
    then request a key from deepBlue and specify it here. (default: anonymous_key)'
  type: string
  inputBinding:
    prefix: --userKey
- id: deep_blue_tempdir
  doc: 'If specified, temporary files from preloading datasets from deepBlue will
    be written here (note, this directory must exist). If not specified, where ever
    temporary files would normally be written on your system is used. (default: None)'
  type: string
  inputBinding:
    prefix: --deepBlueTempDir
- id: deep_blue_keep_temp
  doc: 'If specified, temporary bigWig files from preloading deepBlue datasets are
    not deleted. A message will be printed noting where these files are and what sample
    they correspond to. These can then be used if you wish to analyse the same sample
    with the same regions again. (default: False)'
  type: boolean
  inputBinding:
    prefix: --deepBlueKeepTemp
outputs: []
cwlVersion: v1.1
baseCommand:
- bigwigCompare
