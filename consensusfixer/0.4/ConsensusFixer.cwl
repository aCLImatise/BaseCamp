class: CommandLineTool
id: ConsensusFixer.cwl
inputs:
- id: i
  doc: ': Alignment file in BAM format (required).'
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: ': Reference file in FASTA format (optional).'
  type: string
  inputBinding:
    prefix: -r
- id: o
  doc: ': Path to the output directory (default: current directory).'
  type: File
  inputBinding:
    prefix: -o
- id: mcc
  doc: ': Minimal coverage to call consensus.'
  type: long
  inputBinding:
    prefix: -mcc
- id: mic
  doc: ': Minimal coverage to call insertion.'
  type: long
  inputBinding:
    prefix: -mic
- id: plurality
  doc: ': Minimal relative position-wise base occurence to integrate into wobble (default:
    0.05).'
  type: string
  inputBinding:
    prefix: -plurality
- id: plurality_n
  doc: ': Minimal relative position-wise gap occurence call N (default: 0.5).'
  type: string
  inputBinding:
    prefix: -pluralityN
- id: m
  doc: ': Majority vote respecting pluralityN first, otherwise allow wobbles.'
  type: boolean
  inputBinding:
    prefix: -m
- id: f
  doc: ': Only allow in frame insertions in the consensus.'
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: ': Remove gaps if they are >= pluralityN.'
  type: boolean
  inputBinding:
    prefix: -d
- id: mi
  doc: ': Only the insertion with the maximum frequency greater than mic is incorporated.'
  type: boolean
  inputBinding:
    prefix: -mi
- id: pi
  doc: ': Progressive insertion mode, respecting mic.'
  type: boolean
  inputBinding:
    prefix: -pi
- id: pis
  doc: ': Window size for progressive insertion mode (default: 300).'
  type: long
  inputBinding:
    prefix: -pis
- id: dash
  doc: ": Use '-' instead of bases from the reference."
  type: boolean
  inputBinding:
    prefix: -dash
- id: s
  doc: ': Single core mode with low memory footprint.'
  type: boolean
  inputBinding:
    prefix: -s
- id: xx
  doc: ':NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use).'
  type: boolean
  inputBinding:
    prefix: -XX
- id: xmx10g
  doc: ': Increase heap space.'
  type: boolean
  inputBinding:
    prefix: -Xmx10G
- id: xx
  doc: ':+UseParallelGC    : Enhances performance on multicore systems.'
  type: boolean
  inputBinding:
    prefix: -XX
- id: xx
  doc: ':+UseNUMA          : Enhances performance on multi-CPU systems.'
  type: boolean
  inputBinding:
    prefix: -XX
outputs: []
cwlVersion: v1.1
baseCommand:
- ConsensusFixer
