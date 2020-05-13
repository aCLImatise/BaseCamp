class: CommandLineTool
id: computeMatrixOperations_sort.cwl
inputs:
- id: regions_2bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: regions_3gtf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: matrix_file
  doc: 'Matrix file from the computeMatrix tool. (default: None)'
  type: string
  inputBinding:
    prefix: --matrixFile
- id: out_filename
  doc: 'Output file name (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: regions_filename
  doc: 'File name(s), in BED or GTF format, containing the regions. If multiple bed
    files are given, each one is considered a group that can be plotted separately.
    Also, adding a "#" symbol in the bed file causes all the regions until the previous
    "#" to be considered one group. Alternatively for BED files, putting deepTools_group
    in the header can be used to indicate a column with group labels. Note that these
    should be sorted such that all group entries are together. (default: None)'
  type: string[]
  inputBinding:
    prefix: --regionsFileName
- id: transcript_id
  doc: 'When a GTF file is used to provide regions, only entries with this value as
    their feature (column 3) will be processed as transcripts. (Default: transcript)'
  type: string
  inputBinding:
    prefix: --transcriptID
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
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- sort
