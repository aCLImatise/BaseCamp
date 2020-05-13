class: CommandLineTool
id: estimateReadFiltering.cwl
inputs:
- id: bam_files
  doc: FILE2 [FILE1 FILE2 ...], -b FILE1 FILE2 [FILE1 FILE2 ...] List of indexed bam
    files separated by spaces.
  type: File
  inputBinding:
    prefix: --bamfiles
- id: outfile
  doc: The file to write results to. By default, results are printed to the console
  type: string
  inputBinding:
    prefix: --outFile
- id: sample_labels
  doc: Labels for the samples. The default is to use the file name of the sample.
    The sample labels should be separated by spaces and quoted if a label itselfcontains
    a space E.g. --sampleLabels label-1 "label 2"
  type: string[]
  inputBinding:
    prefix: --sampleLabels
- id: smart_labels
  doc: Instead of manually specifying labels for the input BAM files, this causes
    deepTools to use the file name after removing the path and extension.
  type: boolean
  inputBinding:
    prefix: --smartLabels
- id: binsize
  doc: 'Length in bases of the window used to sample the genome. (Default: 1000000)'
  type: long
  inputBinding:
    prefix: --binSize
- id: distance_between_bins
  doc: 'To reduce the computation time, not every possible genomic bin is sampled.
    This option allows you to set the distance between bins actually sampled from.
    Larger numbers are sufficient for high coverage samples, while smaller values
    are useful for lower coverage samples. Note that if you specify a value that results
    in too few (<1000) reads sampled, the value will be decreased. (Default: 10000)'
  type: long
  inputBinding:
    prefix: --distanceBetweenBins
- id: number_of_processors
  doc: 'Number of processors to use. Type "max/2" to use half the maximum number of
    processors or "max" to use all available processors. (Default: 1)'
  type: long
  inputBinding:
    prefix: --numberOfProcessors
- id: verbose
  doc: Set to see processing messages.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- estimateReadFiltering
