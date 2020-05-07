class: CommandLineTool
id: hicValidateLocations.cwl
inputs:
- id: data
  doc: The loop file from hicDetectLoops. To use files from other sources, please
    follow 'chr start end chr start end' format.
  type: string
  inputBinding:
    prefix: --data
- id: protein
  doc: The protein peak file. Can be narrowPeak or broadPeak
  type: string
  inputBinding:
    prefix: --protein
- id: method
  doc: The loop file
  type: string
  inputBinding:
    prefix: --method
- id: resolution
  doc: The used resolution of the Hi-C interaction matrix.
  type: string
  inputBinding:
    prefix: --resolution
- id: out_filename
  doc: 'The prefix name of the output files. Two file are written: output_matched_locations
    and output_statistics.First file contains all loop locations with protein location
    matches, second file contains statistics about this matching.'
  type: string
  inputBinding:
    prefix: --outFileName
- id: add_chr_prefix_loops
  doc: Adding a 'chr'-prefix to chromosome name of the loops.
  type: boolean
  inputBinding:
    prefix: --addChrPrefixLoops
- id: add_chr_prefix_protein
  doc: Adding a 'chr'-prefix to chromosome name of the protein.
  type: boolean
  inputBinding:
    prefix: --addChrPrefixProtein
outputs: []
cwlVersion: v1.1
baseCommand:
- hicValidateLocations
