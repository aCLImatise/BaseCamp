class: CommandLineTool
id: hicValidateLocations.cwl
inputs:
- id: in_data
  doc: "The loop file from hicDetectLoops. To use files from\nother sources, please\
    \ follow 'chr start end chr start\nend' format."
  type: File?
  inputBinding:
    prefix: --data
- id: in_protein
  doc: The protein peak file. Can be narrowPeak or broadPeak
  type: File?
  inputBinding:
    prefix: --protein
- id: in_method
  doc: "The method used (for the moment only loop is possible)\n(Default: loops)."
  type: string?
  inputBinding:
    prefix: --method
- id: in_resolution
  doc: The used resolution of the Hi-C interaction matrix.
  type: string?
  inputBinding:
    prefix: --resolution
- id: in_out_filename
  doc: "The prefix name of the output files. Two file are\nwritten: output_matched_locations\
    \ and\noutput_statistics.First file contains all loop\nlocations with protein\
    \ location matches, second file\ncontains statistics about this matching."
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_add_chr_prefix_loops
  doc: Adding a 'chr'-prefix to chromosome name of the loops.
  type: boolean?
  inputBinding:
    prefix: --addChrPrefixLoops
- id: in_add_chr_prefix_protein
  doc: "Adding a 'chr'-prefix to chromosome name of the\nprotein."
  type: boolean?
  inputBinding:
    prefix: --addChrPrefixProtein
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "The prefix name of the output files. Two file are\nwritten: output_matched_locations\
    \ and\noutput_statistics.First file contains all loop\nlocations with protein\
    \ location matches, second file\ncontains statistics about this matching."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hicexplorer:3.6--py_0
cwlVersion: v1.1
baseCommand:
- hicValidateLocations
