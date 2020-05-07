class: CommandLineTool
id: manorm.cwl
inputs:
- id: p1
  doc: 'Peaks file of sample 1. BED and MACS format are currently supported. Please
    refer to documents for details. (default: None)'
  type: string
  inputBinding:
    prefix: --p1
- id: p2
  doc: 'Peaks file of sample 2. (default: None)'
  type: string
  inputBinding:
    prefix: --p2
- id: r1
  doc: 'Reads file of sample 1. BED format are currently supported. (default: None)'
  type: string
  inputBinding:
    prefix: --r1
- id: r2
  doc: 'Reads file of sample 2. (default: None)'
  type: string
  inputBinding:
    prefix: --r2
- id: s1
  doc: "Reads shift size of sample 1. This value is used to shift reads towards 3'\
    \ direction to determine the precise binding site. Set as half of the fragment\
    \ length. (default: 100)"
  type: string
  inputBinding:
    prefix: --s1
- id: s2
  doc: 'Reads shift size of sample 2. (default: 100)'
  type: string
  inputBinding:
    prefix: --s2
- id: w
  doc: 'Width of the window to calculate read densities. Windows with unified length
    of 2*width centered at peak summit/midpoint are used to quantify the binding signal.
    This should match the typical length of peaks, a value of 1000 is recommended
    for sharp histone marks like H3K4me3 and H3K9/27ac, and 500 for transcription
    factors or DNase- Seq. (default: 1000)'
  type: string
  inputBinding:
    prefix: -w
- id: d
  doc: 'Summit-to-summit distance cutoff for common peaks. Default=width/2. Only overlapped
    peaks with summit-to- summit distance less than than this value are considered
    as real common peaks of two samples when fitting M-A normalization model. (default:
    None)'
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: 'Number of simulation to test the enrichment of peak overlap between two samples.
    (default: 10)'
  type: string
  inputBinding:
    prefix: -n
- id: m
  doc: 'M-value cutoff to distinguish biased peaks from unbiased peaks. Peaks with
    M-value>=M_cutoff and P-value<=P_cutoff are defined as sample1-biased(specific)
    peaks, while peaks with M-value<=-1*M_cutoff and P-value<=P_cutoff are defined
    as sample2-biased peaks. (default: 1.0)'
  type: string
  inputBinding:
    prefix: -m
- id: p
  doc: 'P-value cutoff to define biased (sample 1/2-specific) peaks. (default: 0.01)'
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: 'By default, MAnorm will write the comparison results of unique and merged
    common peaks in a single output file. With this option on, two extra files which
    contains the results of the original(unmerged) peaks will also be outputted. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: -s
- id: name_1
  doc: 'Name (experiment condition/cell-type etc.) of sample1. If specified, it will
    be used to replace the peaks/reads input file name as the sample name in output
    files. (default: None)'
  type: string
  inputBinding:
    prefix: --name1
- id: name_2
  doc: 'Name (experiment condition/cell-type etc.) of sample2. (default: None)'
  type: string
  inputBinding:
    prefix: --name2
- id: o
  doc: 'Output directory. When --name1 and --name2 are not specified, MAnorm will
    use it as the prefix of comparison output file. (default: None)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- manorm
