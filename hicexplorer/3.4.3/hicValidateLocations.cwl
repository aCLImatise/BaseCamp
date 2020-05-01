#!/usr/bin/env cwl-runner

baseCommand:
- hicValidateLocations
class: CommandLineTool
cwlVersion: v1.0
id: hicvalidatelocations
inputs:
- doc: The loop file from hicDetectLoops. To use files from other sources, please
    follow 'chr start end chr start end' format.
  id: data
  inputBinding:
    prefix: --data
  type: string
- doc: The protein peak file. Can be narrowPeak or broadPeak
  id: protein
  inputBinding:
    prefix: --protein
  type: string
- doc: The loop file
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: The used resolution of the Hi-C interaction matrix.
  id: resolution
  inputBinding:
    prefix: --resolution
  type: string
- doc: 'The prefix name of the output files. Two file are written: output_matched_locations
    and output_statistics.First file contains all loop locations with protein location
    matches, second file contains statistics about this matching.'
  id: out_filename
  inputBinding:
    prefix: --outFileName
  type: string
- doc: Adding a 'chr'-prefix to chromosome name of the loops.
  id: add_chr_prefix_loops
  inputBinding:
    prefix: --addChrPrefixLoops
  type: boolean
- doc: Adding a 'chr'-prefix to chromosome name of the protein.
  id: add_chr_prefix_protein
  inputBinding:
    prefix: --addChrPrefixProtein
  type: boolean
