class: CommandLineTool
id: multiBigwigSummary_bins.cwl
inputs:
- id: file_2bw
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: bw_files
  doc: 'FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...] List of bigWig files,
    separated by spaces. (default: None)'
  type: File
  inputBinding:
    prefix: --bwfiles
- id: out_filename
  doc: 'File name to save the compressed matrix file (npz format) needed by the "plotPCA"
    and "plotCorrelation" tools. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
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
- id: out_raw_counts
  doc: 'Save average scores per region for each bigWig file to a single tab-delimited
    file. (default: None)'
  type: File
  inputBinding:
    prefix: --outRawCounts
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
- multiBigwigSummary
- bins
