class: CommandLineTool
id: HLAProfiler.pl_test.cwl
inputs:
- id: in_test
  doc: "|t         Denotes the module to test\nAvailable_tests:\nall\nSequenceFunctions\n\
    MergeDuplicates\nHLATaxonomy\nHLADistractome\nTaxonomyDivisions\nRunKraken\nSimulateReads\n\
    ReadCounter\nDetermineProfile\nPairPicker\nAlleleRefiner"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_kraken_path
  doc: '|kp base directory of kraken installation. (default:base directory of path
    returned by `which kraken`)'
  type: boolean?
  inputBinding:
    prefix: -kraken_path
- id: in_directory
  doc: "|td   location of test files. (default:;'.')"
  type: boolean?
  inputBinding:
    prefix: -directory
- id: in_output_directory
  doc: "|od    location of temporary output files. (default:;'.')"
  type: boolean?
  inputBinding:
    prefix: -output_directory
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- test
