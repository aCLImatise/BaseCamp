class: CommandLineTool
id: ConsensusFixer.cwl
inputs:
- id: in_alignment_file_bam
  doc: ': Alignment file in BAM format (required).'
  type: File
  inputBinding:
    prefix: -i
- id: in_reference_file_fasta
  doc: ': Reference file in FASTA format (optional).'
  type: File
  inputBinding:
    prefix: -r
- id: in_path_output_directory
  doc: ': Path to the output directory (default: current directory).'
  type: File
  inputBinding:
    prefix: -o
- id: in_mcc
  doc: ': Minimal coverage to call consensus.'
  type: long
  inputBinding:
    prefix: -mcc
- id: in_mic
  doc: ': Minimal coverage to call insertion.'
  type: long
  inputBinding:
    prefix: -mic
- id: in_plurality
  doc: ': Minimal relative position-wise base occurence to integrate into wobble (default:
    0.05).'
  type: double
  inputBinding:
    prefix: -plurality
- id: in_plurality_n
  doc: ': Minimal relative position-wise gap occurence call N (default: 0.5).'
  type: double
  inputBinding:
    prefix: -pluralityN
- id: in_majority_vote_respecting
  doc: ': Majority vote respecting pluralityN first, otherwise allow wobbles.'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_only_allow_frame
  doc: ': Only allow in frame insertions in the consensus.'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_remove_gaps_they
  doc: ': Remove gaps if they are >= pluralityN.'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_mi
  doc: ': Only the insertion with the maximum frequency greater than mic is incorporated.'
  type: boolean
  inputBinding:
    prefix: -mi
- id: in_pi
  doc: ': Progressive insertion mode, respecting mic.'
  type: boolean
  inputBinding:
    prefix: -pi
- id: in_pis
  doc: ': Window size for progressive insertion mode (default: 300).'
  type: long
  inputBinding:
    prefix: -pis
- id: in_dash
  doc: ": Use '-' instead of bases from the reference."
  type: boolean
  inputBinding:
    prefix: -dash
- id: in_single_core_mode
  doc: ': Single core mode with low memory footprint.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_xx
  doc: ':NewRatio=9        : Reduces the memory consumption (RECOMMENDED to use).'
  type: boolean
  inputBinding:
    prefix: -XX
- id: in_x_mx_one_zero_g
  doc: ': Increase heap space.'
  type: boolean
  inputBinding:
    prefix: -Xmx10G
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_directory
  doc: ': Path to the output directory (default: current directory).'
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_directory)
cwlVersion: v1.1
baseCommand:
- ConsensusFixer
