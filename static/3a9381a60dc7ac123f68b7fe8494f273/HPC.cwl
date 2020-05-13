class: CommandLineTool
id: HPC.daligner.cwl
inputs:
- id: k
  doc: ': k-mer size (must be <= 32).'
  type: boolean
  inputBinding:
    prefix: -k
- id: w
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: ': Ignore k-mers that occur >= -t times in a block.'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: ': Use only -M GB of memory by ignoring most frequent k-mers.'
  type: boolean
  inputBinding:
    prefix: -M
- id: e
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: ': Look for alignments of length >= -l.'
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: ': Use -s as the trace point spacing for encoding alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: h
  doc: ': HGAP option: align only target reads of length >= -H.'
  type: boolean
  inputBinding:
    prefix: -H
- id: t
  doc: ': Use -T threads.'
  type: boolean
  inputBinding:
    prefix: -T
- id: p
  doc: ': Do first level sort and merge in directory -P.'
  type: boolean
  inputBinding:
    prefix: -P
- id: m
  doc: ': Soft mask the blocks with the specified mask.'
  type: boolean
  inputBinding:
    prefix: -m
- id: b
  doc: ': For AT/GC biased data, compensate k-mer counts (deprecated).'
  type: boolean
  inputBinding:
    prefix: -b
- id: v
  doc: ': Run all commands in script in verbose mode.'
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: ': Instruct LAsort & LAmerge to sort only on (a,ab).'
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: ': Put .las files for each target block in a sub-directory'
  type: boolean
  inputBinding:
    prefix: -d
- id: b
  doc: ': # of block compares per daligner job'
  type: boolean
  inputBinding:
    prefix: -B
- id: d
  doc: ": # of .las's to merge per LAmerge job"
  type: boolean
  inputBinding:
    prefix: -D
- id: f
  doc: ': Place script bundles in separate files with prefix <name>'
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- HPC.daligner
