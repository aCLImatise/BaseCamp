class: CommandLineTool
id: ALE.cwl
inputs:
- id: in_km_er
  doc: ': Kmer depth for kmer stats [4]'
  type: long
  inputBinding:
    prefix: --kmer
- id: in_q_off
  doc: ': Quality ascii offset (illumina) [33] or 64 (or 0)'
  type: long
  inputBinding:
    prefix: --qOff
- id: in_pl
  doc: ': placementOutputBAM'
  type: string
  inputBinding:
    prefix: --pl
- id: in_pm
  doc: ': library parameter file (auto outputs .param)'
  type: File
  inputBinding:
    prefix: --pm
- id: in_n_out
  doc: ': only output meta information (no per base) [off]'
  type: boolean
  inputBinding:
    prefix: --nout
- id: in_min_ll
  doc: ': the minimum log Likelihood (-120)'
  type: boolean
  inputBinding:
    prefix: --minLL
- id: in_meta_genome
  doc: ': Evaluate each contig independently for depth & kmer metrics'
  type: boolean
  inputBinding:
    prefix: --metagenome
- id: in_realign
  doc: "[=matchScore,misMatchPenalty,gapOpenPenalty,gapExtPenalty,minimumSoftClip\
    \ (default: 1,3,11,4,8) ]\nRealign reads with Striped-Smith-Waterman honoring\
    \ ambiguous reference bases\nand stacking homo-polymer indels\nfor PacBio, try\
    \ --realign=1,5,2,1,20 (similar to BWA-SW recommendations)"
  type: boolean
  inputBinding:
    prefix: --realign
- id: in_snp_report
  doc: ": Creates a new text file reporting all SNP phasing\nobserved by a read against\
    \ ambiguous bases in the reference"
  type: File
  inputBinding:
    prefix: --SNPreport
- id: in_min_qual
  doc: ": Minimum quality score to use in Z-normalization (default 3).\nIllumina quality\
    \ scores can be unreliable below this threshold\n"
  type: long
  inputBinding:
    prefix: --minQual
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_alignments_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_s_vertical_line_b
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_am
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_assembly_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ALE
