class: CommandLineTool
id: methdiff.py.cwl
inputs:
- id: out
  doc: output differential methylation file name. (required)
  type: File
  inputBinding:
    prefix: --out
- id: ref
  doc: reference genome fasta file. (required)
  type: File
  inputBinding:
    prefix: --ref
- id: bin
  doc: 'bin size. [default: 100]'
  type: string
  inputBinding:
    prefix: --bin
- id: pval
  doc: 'p-value cut-off. [default: 0.01]'
  type: string
  inputBinding:
    prefix: --pval
- id: diff
  doc: 'minimal abs meth ratio difference. [default: 0.33]'
  type: string
  inputBinding:
    prefix: --diff
- id: context
  doc: "methylation pattern type [CG|CHG|CHH], multiple types separated by ','. [default:\
    \ all]"
  type: string
  inputBinding:
    prefix: --context
- id: labels
  doc: "output label for each group, separated by ','. [default: filenames]"
  type: string
  inputBinding:
    prefix: --labels
- id: min_depth
  doc: 'minimal average coverage. [default: 1]'
  type: string
  inputBinding:
    prefix: --min-depth
- id: strand
  doc: 'which strand to process, [both|forward|reverse]. [default: both]'
  type: string
  inputBinding:
    prefix: --strand
- id: quiet
  doc: don't print progress on stderr.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- methdiff.py
