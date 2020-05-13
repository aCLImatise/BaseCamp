class: CommandLineTool
id: RNAz.cwl
inputs:
- id: forward
  doc: Score forward strand
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: Score reverse strand
  type: boolean
  inputBinding:
    prefix: --reverse
- id: both_strands
  doc: Score both strands
  type: boolean
  inputBinding:
    prefix: --both-strands
- id: outfile
  doc: Output filename
  type: File
  inputBinding:
    prefix: --outfile
- id: cut_off
  doc: Probability cutoff
  type: double
  inputBinding:
    prefix: --cutoff
- id: dinucleotide
  doc: Use dinucleotide shuffled z-scores (default)
  type: boolean
  inputBinding:
    prefix: --dinucleotide
- id: mononucleotide
  doc: Use mononucleotide shuffled z-scores
  type: boolean
  inputBinding:
    prefix: --mononucleotide
- id: lo_car_nate
  doc: Use decision model for structural alignments (default=off)
  type: boolean
  inputBinding:
    prefix: --locarnate
- id: no_shuffle
  doc: Never fall back to shuffling (default=off)
  type: boolean
  inputBinding:
    prefix: --no-shuffle
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAz
