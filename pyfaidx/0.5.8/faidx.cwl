class: CommandLineTool
id: faidx.cwl
inputs:
- id: fast_a
  doc: FASTA file
  type: string
  inputBinding:
    position: 0
- id: regions
  doc: space separated regions of sequence to fetch e.g. chr1:1-1000
  type: string
  inputBinding:
    position: 1
- id: no_rebuild
  doc: 'do not rebuild the .fai index even if it is out of date. default: False'
  type: boolean
  inputBinding:
    prefix: --no-rebuild
- id: bed
  doc: bed file of regions
  type: string
  inputBinding:
    prefix: --bed
- id: out
  doc: 'output file name (default: stdout)'
  type: string
  inputBinding:
    prefix: --out
- id: transform
  doc: 'transform the requested regions into another format. default: None'
  type: string
  inputBinding:
    prefix: --transform
- id: complement
  doc: 'complement the sequence. default: False'
  type: boolean
  inputBinding:
    prefix: --complement
- id: reverse
  doc: 'reverse the sequence. default: False'
  type: boolean
  inputBinding:
    prefix: --reverse
- id: auto_strand
  doc: 'reverse complement the sequence when start > end coordinate. default: False'
  type: boolean
  inputBinding:
    prefix: --auto-strand
- id: size_range
  doc: 'selected sequences are in the size range [low, high]. example: 1,1000 default:
    None'
  type: long
  inputBinding:
    prefix: --size-range
- id: split_files
  doc: write each region to a separate file (names are derived from regions)
  type: boolean
  inputBinding:
    prefix: --split-files
- id: lazy
  doc: 'fill in --default-seq for missing ranges. default: False'
  type: boolean
  inputBinding:
    prefix: --lazy
- id: default_seq
  doc: 'default base for missing positions and masking. default: None'
  type: string
  inputBinding:
    prefix: --default-seq
- id: mask_with_default_seq
  doc: 'mask the FASTA file using --default-seq default: False'
  type: boolean
  inputBinding:
    prefix: --mask-with-default-seq
- id: mask_by_case
  doc: 'mask the FASTA file by changing to lowercase. default: False'
  type: boolean
  inputBinding:
    prefix: --mask-by-case
- id: no_output
  doc: 'do not output any sequence. default: False'
  type: boolean
  inputBinding:
    prefix: --no-output
- id: no_names
  doc: 'omit sequence names from output. default: False'
  type: boolean
  inputBinding:
    prefix: --no-names
- id: long_names
  doc: 'output full (long) names from the input fasta headers. default: headers are
    truncated after the first whitespace'
  type: boolean
  inputBinding:
    prefix: --long-names
- id: no_coords
  doc: 'omit coordinates (e.g. chr:start-end) from output headers. default: False'
  type: boolean
  inputBinding:
    prefix: --no-coords
- id: delimiter
  doc: 'delimiter for splitting names to multiple values (duplicate names will be
    discarded). default: None'
  type: string
  inputBinding:
    prefix: --delimiter
- id: header_function
  doc: 'python function to modify header lines e.g: "lambda x: x.split("|")[0]". default:
    lambda x: x.split()[0]'
  type: string
  inputBinding:
    prefix: --header-function
- id: duplicates_action
  doc: 'entry to take when duplicate sequence names are encountered. default: stop'
  type: string
  inputBinding:
    prefix: --duplicates-action
- id: regex
  doc: 'selected sequences are those matching regular expression. default: .*'
  type: string
  inputBinding:
    prefix: --regex
- id: invert_match
  doc: "selected sequences are those not matching 'regions' argument. default: False"
  type: boolean
  inputBinding:
    prefix: --invert-match
outputs: []
cwlVersion: v1.1
baseCommand:
- faidx
