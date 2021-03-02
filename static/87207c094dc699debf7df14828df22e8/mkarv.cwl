class: CommandLineTool
id: mkarv.cwl
inputs:
- id: in_concurrency
  doc: "The number of concurrent processes to use (default:\n1). (default: 1)"
  type: long?
  inputBinding:
    prefix: --concurrency
- id: in_description
  doc: 'A description for the viewer instance. (default: None)'
  type: string?
  inputBinding:
    prefix: --description
- id: in_force
  doc: "Overwrite the output directory if it exists. (default:\nFalse)"
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_indent
  doc: "If indent is given, JSON output will be pretty-printed\nand indented. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --indent
- id: in_less_redundant
  doc: "Produce a viewer with fewer metrics (metrics that are\nexpected to be largely\
    \ redundant will not be\ndisplayed. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --less-redundant
- id: in_maximum_fragment_length
  doc: "The maximum fragment length for which the distance to\nthe reference fragment\
    \ length count distribution will\nbe measured. (default: 1000)"
  type: long?
  inputBinding:
    prefix: --maximum-fragment-length
- id: in_peak_reference
  doc: "A reference set of peak metrics to plot. The default\nvalue is \"SRR891268\"\
    , the peak metrics of that sample\nin the ATAC-seq paper, as generated with MACS2\
    \ in our\npipeline. It can be specified as \"calculate\", in which\ncase these\
    \ metrics will be averaged from the given\nmetrics. It can also be the name of\
    \ a JSON file, which\nmust contain an object with two keys,\n\"cumulative_fraction_of_hqaa\"\
    \ and\n\"cumulative_fraction_of_territory\", the value of each\nbeing an array\
    \ of fractions of high-quality autosomal\nalignments (HQAA) or total peak territory,\n\
    respectively. A tab- or comma-separated value file may\nalso be given, in which\
    \ each line contains two\nfractions, of HQAA and peak territory. All of these\n\
    arrays should represent values at percentiles from\n1-100. (default: SRR891268)"
  type: File?
  inputBinding:
    prefix: --peak-reference
- id: in_reference
  doc: "How to make the reference fragment length count\ndistribution. The default\
    \ value is \"SRR891268\", the\nfragment length distribution of that sample in\
    \ the\nATAC-seq paper. It can be specified as \"calculate\", in\nwhich case a\
    \ distance will be calculated for each set\nof metrics from a reference distribution\
    \ constructed\nfrom the rest of the given metrics. It can also be the\nname of\
    \ a file containing a reference distribution.\nThis file may be in JSON format,\
    \ containing an object\nmapping fragment lengths to counts (e.g. \"{0: 0, 1:\n\
    10, 2: 17}\", or it may be a tab- or comma-separated\nvalue file in which each\
    \ line contains a fragment\nlength and count. It may (default: SRR891268)"
  type: long?
  inputBinding:
    prefix: --reference
- id: in_template_directory
  doc: "The location of the web app directory template.\n(default: auto)"
  type: Directory?
  inputBinding:
    prefix: --template-directory
- id: in_verbose
  doc: 'Talk more. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_directory
  doc: The path to the directory where the web app will be
  type: Directory
  inputBinding:
    position: 0
- id: in_created_dot
  doc: metrics               One or more ataqv metrics files in JSON format.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: "Overwrite the output directory if it exists. (default:\nFalse)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ataqv:1.2.1--py36h00065c3_1
cwlVersion: v1.1
baseCommand:
- mkarv
