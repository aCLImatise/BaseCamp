class: CommandLineTool
id: mkarv.cwl
inputs:
- id: directory
  doc: The path to the directory where the web app will be created.
  type: Directory
  inputBinding:
    position: 0
- id: metrics
  doc: 'One or more ataqv metrics files in JSON format. (default: None)'
  type: string
  inputBinding:
    position: 1
- id: concurrency
  doc: 'The number of concurrent processes to use (default: 1). (default: 1)'
  type: string
  inputBinding:
    prefix: --concurrency
- id: description
  doc: 'A description for the viewer instance. (default: None)'
  type: string
  inputBinding:
    prefix: --description
- id: force
  doc: 'Overwrite the output directory if it exists. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: indent
  doc: 'If indent is given, JSON output will be pretty-printed and indented. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --indent
- id: maximum_fragment_length
  doc: 'The maximum fragment length for which the distance to the reference fragment
    length count distribution will be measured. (default: 1000)'
  type: long
  inputBinding:
    prefix: --maximum-fragment-length
- id: peak_reference
  doc: 'A reference set of peak metrics to plot. The default value is "SRR891268",
    the peak metrics of that sample in the ATAC-seq paper, as generated with MACS2
    in our pipeline. It can be specified as "calculate", in which case these metrics
    will be averaged from the given metrics. It can also be the name of a JSON file,
    which must contain an object with two keys, "cumulative_fraction_of_hqaa" and
    "cumulative_fraction_of_territory", the value of each being an array of fractions
    of high-quality autosomal alignments (HQAA) or total peak territory, respectively.
    A tab- or comma-separated value file may also be given, in which each line contains
    two fractions, of HQAA and peak territory. All of these arrays should represent
    values at percentiles from 1-100. (default: SRR891268)'
  type: string
  inputBinding:
    prefix: --peak-reference
- id: reference
  doc: 'How to make the reference fragment length count distribution. The default
    value is "SRR891268", the fragment length distribution of that sample in the ATAC-seq
    paper. It can be specified as "calculate", in which case a distance will be calculated
    for each set of metrics from a reference distribution constructed from the rest
    of the given metrics. It can also be the name of a file containing a reference
    distribution. This file may be in JSON format, containing an object mapping fragment
    lengths to counts (e.g. "{0: 0, 1: 10, 2: 17}", or it may be a tab- or comma-separated
    value file in which each line contains a fragment length and count. It may (default:
    SRR891268)'
  type: string
  inputBinding:
    prefix: --reference
- id: template_directory
  doc: 'The location of the web app directory template. (default: /tmp/tmpfd17w363/web)'
  type: string
  inputBinding:
    prefix: --template-directory
- id: verbose
  doc: 'Talk more. (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mkarv
