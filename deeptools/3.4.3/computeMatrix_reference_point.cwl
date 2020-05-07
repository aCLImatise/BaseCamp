class: CommandLineTool
id: computeMatrix_reference_point.cwl
inputs:
- id: regions_filename
  doc: 'File name or names, in BED or GTF format, containing the regions to plot.
    If multiple bed files are given, each one is considered a group that can be plotted
    separately. Also, adding a "#" symbol in the bed file causes all the regions until
    the previous "#" to be considered one group. (default: None)'
  type: File[]
  inputBinding:
    prefix: --regionsFileName
- id: score_filename
  doc: 'bigWig file(s) containing the scores to be plotted. Multiple files should
    be separated by spaced. BigWig files can be obtained by using the bamCoverage
    or bamCompare tools. More information about the bigWig file format can be found
    at http://genome.ucsc.edu/goldenPath/help/bigWig.html (default: None)'
  type: File[]
  inputBinding:
    prefix: --scoreFileName
- id: samples_label
  doc: 'Labels for the samples. This will then be passed to plotHeatmap and plotProfile.
    The default is to use the file name of the sample. The sample labels should be
    separated by spaces and quoted if a label itselfcontains a space E.g. --samplesLabel
    label-1 "label 2" (default: None)'
  type: string[]
  inputBinding:
    prefix: --samplesLabel
- id: smart_labels
  doc: 'Instead of manually specifying labels for the input bigWig and BED/GTF files,
    this causes deepTools to use the file name after removing the path and extension.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --smartLabels
- id: quiet
  doc: 'Set to remove any warning or processing messages. (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: 'Being VERY verbose in the status messages. --quiet will disable this. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: scale
  doc: 'If set, all values are multiplied by this number. (Default: 1)'
  type: string
  inputBinding:
    prefix: --scale
- id: number_of_processors
  doc: 'Number of processors to use. Type "max/2" to use half the maximum number of
    processors or "max" to use all available processors. (Default: 1)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: meta_gene
  doc: 'When either a BED12 or GTF file are used to provide regions, perform the computation
    on the merged exons, rather than using the genomic interval defined by the 5-prime
    and 3-prime most transcript bound (i.e., columns 2 and 3 of a BED file). If a
    BED3 or BED6 file is used as input, then columns 2 and 3 are used as an exon.
    (Default: False)'
  type: boolean
  inputBinding:
    prefix: --metagene
- id: transcript_id
  doc: 'When a GTF file is used to provide regions, only entries with this value as
    their feature (column 3) will be processed as transcripts. (Default: transcript)'
  type: string
  inputBinding:
    prefix: --transcriptID
- id: exon_id
  doc: 'When a GTF file is used to provide regions, only entries with this value as
    their feature (column 3) will be processed as exons. CDS would be another common
    value for this. (Default: exon)'
  type: string
  inputBinding:
    prefix: --exonID
- id: transcript_id_designator
  doc: "Each region has an ID (e.g., ACTB) assigned to it, which for BED files is\
    \ either column 4 (if it exists) or the interval bounds. For GTF files this is\
    \ instead stored in the last column as a key:value pair (e.g., as 'transcript_id\
    \ \"ACTB\"', for a key of transcript_id and a value of ACTB). In some cases it\
    \ can be convenient to use a different identifier. To do so, set this to the desired\
    \ key. (Default: transcript_id)"
  type: string
  inputBinding:
    prefix: --transcript_id_designator
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
- computeMatrix
- reference-point
