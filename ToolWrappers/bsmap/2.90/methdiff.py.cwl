class: CommandLineTool
id: methdiff.py.cwl
inputs:
- id: in_out
  doc: output differential methylation file name. (required)
  type: File?
  inputBinding:
    prefix: --out
- id: in_ref
  doc: reference genome fasta file. (required)
  type: File?
  inputBinding:
    prefix: --ref
- id: in_bin
  doc: 'bin size. [default: 100]'
  type: long?
  inputBinding:
    prefix: --bin
- id: in_pval
  doc: 'p-value cut-off. [default: 0.01]'
  type: double?
  inputBinding:
    prefix: --pval
- id: in_diff
  doc: 'minimal abs meth ratio difference. [default: 0.33]'
  type: double?
  inputBinding:
    prefix: --diff
- id: in_context
  doc: "methylation pattern type [CG|CHG|CHH], multiple types\nseparated by ','. [default:\
    \ all]"
  type: string?
  inputBinding:
    prefix: --context
- id: in_labels
  doc: "output label for each group, separated by ','.\n[default: filenames]"
  type: string?
  inputBinding:
    prefix: --labels
- id: in_min_depth
  doc: 'minimal average coverage. [default: 1]'
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_strand
  doc: "which strand to process, [both|forward|reverse].\n[default: both]"
  type: string?
  inputBinding:
    prefix: --strand
- id: in_quiet
  doc: don't print progress on stderr.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output differential methylation file name. (required)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- methdiff.py
