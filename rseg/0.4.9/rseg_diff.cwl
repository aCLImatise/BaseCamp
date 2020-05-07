class: CommandLineTool
id: rseg_diff.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mapped_read_locations_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mapped_read_locations_b
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out
  doc: 'domain output file '
  type: boolean
  inputBinding:
    prefix: -out
- id: score
  doc: 'Posterior scores file '
  type: boolean
  inputBinding:
    prefix: -score
- id: read_count
  doc: 'readcounts file '
  type: boolean
  inputBinding:
    prefix: -readcount
- id: boundary
  doc: 'domain boundary file '
  type: boolean
  inputBinding:
    prefix: -boundary
- id: boundary_score
  doc: 'boundary transition scores file '
  type: boolean
  inputBinding:
    prefix: -boundary-score
- id: chrom
  doc: 'file with chromosome sizes (BED format) '
  type: boolean
  inputBinding:
    prefix: -chrom
- id: dead_zones
  doc: 'file of deadzones (BED format) '
  type: boolean
  inputBinding:
    prefix: -deadzones
- id: bam
  doc: 'Input reads file is BAM format '
  type: boolean
  inputBinding:
    prefix: -bam
- id: param_in
  doc: 'Input parameters file '
  type: boolean
  inputBinding:
    prefix: -param-in
- id: param_out
  doc: 'Output parameters file '
  type: boolean
  inputBinding:
    prefix: -param-out
- id: mode
  doc: 'running mode 2:test-control; 3: test-test '
  type: boolean
  inputBinding:
    prefix: -mode
- id: max_it_r
  doc: 'maximum iterations for training '
  type: boolean
  inputBinding:
    prefix: -maxitr
- id: bin_size
  doc: 'bin size (default: based on data) '
  type: boolean
  inputBinding:
    prefix: -bin-size
- id: bin_step
  doc: 'minimum bin size (default: 50) '
  type: boolean
  inputBinding:
    prefix: -bin-step
- id: duplicates
  doc: 'keep duplicate reads '
  type: boolean
  inputBinding:
    prefix: -duplicates
- id: fragment_length
  doc: 'Extend reads to fragment length (default not to  extend) '
  type: boolean
  inputBinding:
    prefix: -fragment_length
- id: waterman
  doc: "use Waterman's method for bin size "
  type: boolean
  inputBinding:
    prefix: -Waterman
- id: hideaki
  doc: "use Hideaki's method for bin size "
  type: boolean
  inputBinding:
    prefix: -Hideaki
- id: hideaki_emp
  doc: "use Hideaki's empirical method (default) "
  type: boolean
  inputBinding:
    prefix: -Hideaki-emp
- id: smooth
  doc: 'Indicate whether the rate curve is assumed smooth '
  type: boolean
  inputBinding:
    prefix: -smooth
- id: max_dead
  doc: 'max deadzone proportion for retained bins '
  type: boolean
  inputBinding:
    prefix: -max-dead
- id: domain_size
  doc: 'expected domain size (default: 20000) '
  type: boolean
  inputBinding:
    prefix: -domain-size
- id: desert
  doc: 'desert size (default: 20000) '
  type: boolean
  inputBinding:
    prefix: -desert
- id: fg
  doc: 'foreground emission distribution '
  type: boolean
  inputBinding:
    prefix: -fg
- id: bg
  doc: 'background emission distribution '
  type: boolean
  inputBinding:
    prefix: -bg
- id: training_size
  doc: 'Max number of data points for training (default: all) '
  type: boolean
  inputBinding:
    prefix: -training-size
- id: posterior
  doc: 'use posterior decoding (default: Viterbi) '
  type: boolean
  inputBinding:
    prefix: -posterior
- id: posterior_cut_off
  doc: 'Posterior threshold for signigicant bins '
  type: boolean
  inputBinding:
    prefix: -posterior-cutoff
- id: undefined
  doc: 'min size of unmappable region '
  type: boolean
  inputBinding:
    prefix: -undefined
- id: cut_off
  doc: 'cutoff in cdf for identified domains '
  type: boolean
  inputBinding:
    prefix: -cutoff
- id: verbose
  doc: 'print more run information '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- rseg-diff
