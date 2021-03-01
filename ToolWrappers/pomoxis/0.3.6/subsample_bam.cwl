class: CommandLineTool
id: subsample_bam.cwl
inputs:
- id: in_output_prefix
  doc: 'Output prefix (default: sub_sampled)'
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_regions
  doc: 'Only process given regions. (default: None)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_profile
  doc: "Stride in genomic coordinates for depth profile.\n(default: 1000)"
  type: long?
  inputBinding:
    prefix: --profile
- id: in_orientation
  doc: 'Sample only forward or reverse reads. (default: None)'
  type: string?
  inputBinding:
    prefix: --orientation
- id: in_threads
  doc: 'Number of threads to use. (default: -1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_quality
  doc: 'Filter reads by mean qscore. (default: None)'
  type: string?
  inputBinding:
    prefix: --quality
- id: in_accuracy
  doc: 'Filter reads by accuracy. (default: None)'
  type: string?
  inputBinding:
    prefix: --accuracy
- id: in_coverage
  doc: "Filter reads by coverage (what fraction of the read\naligns). (default: None)"
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_length
  doc: 'Filter reads by read length. (default: None)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_any_fail
  doc: "Exit with an error if any region has insufficient\ncoverage. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --any_fail
- id: in_all_fail
  doc: "Exit with an error if all regions have insufficient\ncoverage. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --all_fail
- id: in_patience
  doc: "Maximum iterations with no change in median coverage\nbefore aborting. (default:\
    \ 5)"
  type: long?
  inputBinding:
    prefix: --patience
- id: in_stride
  doc: "Stride in genomic coordinates when searching for new\nreads. Smaller can lead\
    \ to more compact pileup.\n(default: 1000)"
  type: long?
  inputBinding:
    prefix: --stride
- id: in_proportional
  doc: "Activate proportional sampling, thus keeping depth\nvariations of the pileup.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --proportional
- id: in_seed
  doc: "Random seed for proportional downsampling of reads.\n(default: None)\n"
  type: string?
  inputBinding:
    prefix: --seed
- id: in_bam
  doc: input bam file.
  type: string
  inputBinding:
    position: 0
- id: in_depth
  doc: Target depth.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pomoxis:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- subsample_bam
