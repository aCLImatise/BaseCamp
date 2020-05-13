class: CommandLineTool
id: scHicPlotClusterProfiles.cwl
inputs:
- id: matrix
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to investigate for QC. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: clusters
  doc: 'file, -c cluster file Text file which contains per matrix the associated cluster.
    (default: None)'
  type: string
  inputBinding:
    prefix: --clusters
- id: chromosomes
  doc: 'List of to be plotted chromosomes (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: maximal_distance
  doc: 'maximal distance in bases (default: 50000000)'
  type: long
  inputBinding:
    prefix: --maximalDistance
- id: distance_short_range
  doc: 'Distance which should be considered as short range. Default 2MB. (default:
    2000000)'
  type: string
  inputBinding:
    prefix: --distanceShortRange
- id: distance_long_range
  doc: 'Distance which should be considered as short range. Default 12MB. (default:
    12000000)'
  type: string
  inputBinding:
    prefix: --distanceLongRange
- id: order_by
  doc: 'Algorithm to cluster the Hi-C matrices (default: svl)'
  type: string
  inputBinding:
    prefix: --orderBy
- id: out_filename
  doc: 'File name to save the resulting cluster profile. (default: clusters_profile.png)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: dpi
  doc: 'The dpi of the plot. (default: 300)'
  type: string
  inputBinding:
    prefix: --dpi
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicPlotClusterProfiles
