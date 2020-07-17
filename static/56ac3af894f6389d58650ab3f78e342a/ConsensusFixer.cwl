class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ConsensusFixer.cwl
inputs:
- id: alignment_file_bam
  doc: ': Alignment file in BAM format (required).'
  type: string
  inputBinding:
    prefix: -i
- id: reference_file_fasta
  doc: ': Reference file in FASTA format (optional).'
  type: string
  inputBinding:
    prefix: -r
- id: path_current_directory
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
- id: majority_vote_respecting
  doc: ': Majority vote respecting pluralityN first, otherwise allow wobbles.'
  type: boolean
  inputBinding:
    prefix: -m
- id: only_allow_frame
  doc: ': Only allow in frame insertions in the consensus.'
  type: boolean
  inputBinding:
    prefix: -f
- id: remove_gaps_they
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
- id: single_core_mode
  doc: ': Single core mode with low memory footprint.'
  type: boolean
  inputBinding:
    prefix: -s
- id: xx
  doc: ':NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use).'
  type: boolean
  inputBinding:
    prefix: -XX
- id: x_mx_one_zero_g
  doc: ': Increase heap space.'
  type: boolean
  inputBinding:
    prefix: -Xmx10G
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ConsensusFixer
