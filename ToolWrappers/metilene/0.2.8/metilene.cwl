class: CommandLineTool
id: metilene.cwl
inputs:
- id: in_max_dist
  doc: maximum distance (default:300)
  type: long?
  inputBinding:
    prefix: --maxdist
- id: in_max_seg
  doc: "maximum segment length in case of memory\nissues (default:-1)"
  type: long?
  inputBinding:
    prefix: --maxseg
- id: in_min_cpgs
  doc: minimum cpgs (default:10)
  type: long?
  inputBinding:
    prefix: --mincpgs
- id: in_min_meth_diff
  doc: "minimum mean methylation difference\n(default:0.100000)"
  type: double?
  inputBinding:
    prefix: --minMethDiff
- id: in_threads
  doc: number of threads (default:1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_mode
  doc: "number of method: 1: de-novo, 2: pre-defined\nregions, 3: DMCs (default:1)"
  type: long?
  inputBinding:
    prefix: --mode
- id: in_mtc
  doc: "method of multiple testing correction: 1:\nBonferroni, 2: Benjamini-Hochberg\
    \ (FDR)\n(default:1)"
  type: long?
  inputBinding:
    prefix: --mtc
- id: in_group_a
  doc: name of group A (default:"g1")
  type: long?
  inputBinding:
    prefix: --groupA
- id: in_group_b
  doc: name of group B (default:"g2")
  type: long?
  inputBinding:
    prefix: --groupB
- id: in_bed
  doc: "bed-file for mode 2 containing pre-defined\nregions; needs to be SORTED equally\
    \ to the\nDataInputFile (default:none)"
  type: File?
  inputBinding:
    prefix: --bed
- id: in_min_noa
  doc: "minimal number of values in group A\n(default:-1)"
  type: long?
  inputBinding:
    prefix: --minNoA
- id: in_min_nob
  doc: "minimal number of values in group B\n(default:-1)"
  type: long?
  inputBinding:
    prefix: --minNoB
- id: in_seed
  doc: "set seed for random generator\n(default:26061981)"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_valley
  doc: valley filter (0.0 - 1.0) (default:0.700000)
  type: double?
  inputBinding:
    prefix: --valley
- id: in_data_input_file
  doc: metilene - a tool for fast and sensitive detection of differential DNA methylation
  type: string
  inputBinding:
    position: 0
- id: in_zero_dot_two_eight
  doc: '[BUGS]'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metilene
