class: CommandLineTool
id: faidx.cwl
inputs:
- id: in_no_rebuild
  doc: "do not rebuild the .fai index even if it is out of\ndate. default: False"
  type: boolean?
  inputBinding:
    prefix: --no-rebuild
- id: in_bed
  doc: bed file of regions
  type: File?
  inputBinding:
    prefix: --bed
- id: in_out
  doc: 'output file name (default: stdout)'
  type: File?
  inputBinding:
    prefix: --out
- id: in_transform
  doc: "transform the requested regions into another format.\ndefault: None"
  type: string?
  inputBinding:
    prefix: --transform
- id: in_complement
  doc: 'complement the sequence. default: False'
  type: boolean?
  inputBinding:
    prefix: --complement
- id: in_reverse
  doc: 'reverse the sequence. default: False'
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_auto_strand
  doc: "reverse complement the sequence when start > end\ncoordinate. default: False"
  type: boolean?
  inputBinding:
    prefix: --auto-strand
- id: in_size_range
  doc: "selected sequences are in the size range [low, high].\nexample: 1,1000 default:\
    \ None"
  type: long?
  inputBinding:
    prefix: --size-range
- id: in_split_files
  doc: "write each region to a separate file (names are\nderived from regions)"
  type: boolean?
  inputBinding:
    prefix: --split-files
- id: in_lazy
  doc: 'fill in --default-seq for missing ranges. default:'
  type: boolean?
  inputBinding:
    prefix: --lazy
- id: in_mask_with_default_seq
  doc: 'mask the FASTA file using --default-seq default: False'
  type: boolean?
  inputBinding:
    prefix: --mask-with-default-seq
- id: in_mask_by_case
  doc: 'mask the FASTA file by changing to lowercase. default:'
  type: boolean?
  inputBinding:
    prefix: --mask-by-case
- id: in_no_names
  doc: 'omit sequence names from output. default: False'
  type: boolean?
  inputBinding:
    prefix: --no-names
- id: in_long_names
  doc: "output full (long) names from the input fasta headers.\ndefault: headers are\
    \ truncated after the first\nwhitespace"
  type: boolean?
  inputBinding:
    prefix: --long-names
- id: in_no_coords
  doc: "omit coordinates (e.g. chr:start-end) from output\nheaders. default: False"
  type: boolean?
  inputBinding:
    prefix: --no-coords
- id: in_delimiter
  doc: "delimiter for splitting names to multiple values\n(duplicate names will be\
    \ discarded). default: None"
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_header_function
  doc: "python function to modify header lines e.g: \"lambda x:\nx.split(\"|\")[0]\"\
    . default: lambda x: x.split()[0]"
  type: long?
  inputBinding:
    prefix: --header-function
- id: in_duplicates_action
  doc: "entry to take when duplicate sequence names are\nencountered. default: stop"
  type: string?
  inputBinding:
    prefix: --duplicates-action
- id: in_regex
  doc: "selected sequences are those matching regular\nexpression. default: .*"
  type: string?
  inputBinding:
    prefix: --regex
- id: in_invert_match
  doc: "selected sequences are those not matching 'regions'\nargument. default: False"
  type: boolean?
  inputBinding:
    prefix: --invert-match
- id: in_fast_a
  doc: FASTA file
  type: string
  inputBinding:
    position: 0
- id: in_regions
  doc: "space separated regions of sequence to fetch e.g.\nchr1:1-1000"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'output file name (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- faidx
