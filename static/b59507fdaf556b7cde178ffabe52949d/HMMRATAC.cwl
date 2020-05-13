class: CommandLineTool
id: HMMRATAC.cwl
inputs:
- id: b
  doc: ', --bam <BAM> Sorted BAM file containing the ATAC-seq reads'
  type: boolean
  inputBinding:
    prefix: -b
- id: i
  doc: ', --index <BAI> Index file for the sorted BAM File'
  type: boolean
  inputBinding:
    prefix: -i
- id: g
  doc: ', --genome <GenomeFile> Two column, tab delimited file containing genome size
    stats'
  type: boolean
  inputBinding:
    prefix: -g
- id: model
  doc: Binary model file (generated from previous HMMR run) to use instead of creating
    new one
  type: File
  inputBinding:
    prefix: --model
- id: model_only
  doc: <true || false> Whether or not to stop the program after generating model.
    Default = false
  type: boolean
  inputBinding:
    prefix: --modelonly
- id: max_train
  doc: Maximum number of training regions to use. Default == 1000
  type: long
  inputBinding:
    prefix: --maxTrain
- id: remove_duplicates
  doc: <true || false> Whether or not to remove duplicate reads from analysis. Default
    = true
  type: boolean
  inputBinding:
    prefix: --removeDuplicates
- id: print_exclude
  doc: <true || false> Whether to output excluded regions into Output_exclude.bed.
    Default = false
  type: boolean
  inputBinding:
    prefix: --printExclude
- id: print_train
  doc: <true || false> Whether to output training regions into Output_training.bed.
    Default = true
  type: boolean
  inputBinding:
    prefix: --printTrain
- id: random_seed
  doc: Seed to set for random sampling of training regions. Default is 10151
  type: string
  inputBinding:
    prefix: --randomSeed
- id: threshold
  doc: threshold for reporting peaks. Only peaks who's score is >= this value will
    be reported.
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- HMMRATAC
