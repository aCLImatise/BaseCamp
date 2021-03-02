class: CommandLineTool
id: rseg.cwl
inputs:
- id: in_out
  doc: domain output file
  type: File?
  inputBinding:
    prefix: -out
- id: in_score
  doc: Posterior scores file
  type: boolean?
  inputBinding:
    prefix: -score
- id: in_read_count
  doc: readcounts file
  type: boolean?
  inputBinding:
    prefix: -readcount
- id: in_boundary
  doc: domain boundary file
  type: boolean?
  inputBinding:
    prefix: -boundary
- id: in_boundary_score
  doc: boundary transition scores file
  type: boolean?
  inputBinding:
    prefix: -boundary-score
- id: in_chrom
  doc: file with chromosome sizes (BED format)
  type: boolean?
  inputBinding:
    prefix: -chrom
- id: in_dead_zones
  doc: file of deadzones (BED format)
  type: boolean?
  inputBinding:
    prefix: -deadzones
- id: in_bam
  doc: Input reads file is BAM format
  type: boolean?
  inputBinding:
    prefix: -bam
- id: in_param_in
  doc: Input parameters file
  type: boolean?
  inputBinding:
    prefix: -param-in
- id: in_param_out
  doc: Output parameters file
  type: File?
  inputBinding:
    prefix: -param-out
- id: in_max_it_r
  doc: maximum iterations for training
  type: boolean?
  inputBinding:
    prefix: -maxitr
- id: in_bin_size
  doc: 'bin size (default: based on data)'
  type: boolean?
  inputBinding:
    prefix: -bin-size
- id: in_bin_step
  doc: 'minimum bin size (default: 50)'
  type: boolean?
  inputBinding:
    prefix: -bin-step
- id: in_duplicates
  doc: keep duplicate reads
  type: boolean?
  inputBinding:
    prefix: -duplicates
- id: in_fragment_length
  doc: "Extend reads to fragment length (default not to\nextend)"
  type: boolean?
  inputBinding:
    prefix: -fragment_length
- id: in_waterman
  doc: use Waterman's method for bin size
  type: boolean?
  inputBinding:
    prefix: -Waterman
- id: in_hideaki
  doc: use Hideaki's method for bin size
  type: boolean?
  inputBinding:
    prefix: -Hideaki
- id: in_hideaki_emp
  doc: use Hideaki's empirical method (default)
  type: boolean?
  inputBinding:
    prefix: -Hideaki-emp
- id: in_smooth
  doc: Indicate whether the rate curve is assumed smooth
  type: boolean?
  inputBinding:
    prefix: -smooth
- id: in_max_dead
  doc: max deadzone proportion for retained bins
  type: boolean?
  inputBinding:
    prefix: -max-dead
- id: in_domain_size
  doc: 'expected domain size (default: 20000)'
  type: boolean?
  inputBinding:
    prefix: -domain-size
- id: in_desert
  doc: 'desert size (default: 20000)'
  type: boolean?
  inputBinding:
    prefix: -desert
- id: in_fg
  doc: foreground emission distribution
  type: boolean?
  inputBinding:
    prefix: -fg
- id: in_bg
  doc: background emission distribution
  type: boolean?
  inputBinding:
    prefix: -bg
- id: in_posterior
  doc: 'use posterior decoding (default: Viterbi)'
  type: boolean?
  inputBinding:
    prefix: -posterior
- id: in_posterior_cut_off
  doc: posterior cutoff significance
  type: boolean?
  inputBinding:
    prefix: -posterior-cutoff
- id: in_undefined
  doc: min size of unmappable region
  type: boolean?
  inputBinding:
    prefix: -undefined
- id: in_cut_off
  doc: cutoff in cdf for identified domains
  type: boolean?
  inputBinding:
    prefix: -cutoff
- id: in_verbose
  doc: print more run information
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_mapped_read_locations
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: domain output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_param_out
  doc: Output parameters file
  type: File?
  outputBinding:
    glob: $(inputs.in_param_out)
hints: []
cwlVersion: v1.1
baseCommand:
- rseg
