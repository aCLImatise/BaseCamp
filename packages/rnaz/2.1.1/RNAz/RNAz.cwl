class: CommandLineTool
id: RNAz.cwl
inputs:
- id: in_forward
  doc: Score forward strand
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: Score reverse strand
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_both_strands
  doc: Score both strands
  type: boolean
  inputBinding:
    prefix: --both-strands
- id: in_outfile
  doc: Output filename
  type: File
  inputBinding:
    prefix: --outfile
- id: in_cut_off
  doc: Probability cutoff
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_dinucleotide
  doc: Use dinucleotide shuffled z-scores (default)
  type: boolean
  inputBinding:
    prefix: --dinucleotide
- id: in_mononucleotide
  doc: Use mononucleotide shuffled z-scores
  type: boolean
  inputBinding:
    prefix: --mononucleotide
- id: in_lo_car_nate
  doc: Use decision model for structural alignments (default=off)
  type: boolean
  inputBinding:
    prefix: --locarnate
- id: in_no_shuffle
  doc: Never fall back to shuffling (default=off)
  type: boolean
  inputBinding:
    prefix: --no-shuffle
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Output filename
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- RNAz
