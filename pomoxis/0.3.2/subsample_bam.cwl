class: CommandLineTool
id: subsample_bam.cwl
inputs:
- id: bam
  doc: input bam file.
  type: string
  inputBinding:
    position: 0
- id: depth
  doc: Target depth.
  type: string
  inputBinding:
    position: 1
- id: output_prefix
  doc: 'Output prefix (default: sub_sampled)'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: regions
  doc: 'Only process given regions. (default: None)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: profile
  doc: 'Stride in genomic coordinates for depth profile. (default: 1000)'
  type: string
  inputBinding:
    prefix: --profile
- id: orientation
  doc: 'Sample only forward or reverse reads. (default: None)'
  type: string
  inputBinding:
    prefix: --orientation
- id: threads
  doc: 'Number of threads to use. (default: -1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quality
  doc: 'Filter reads by mean qscore. (default: None)'
  type: string
  inputBinding:
    prefix: --quality
- id: accuracy
  doc: 'Filter reads by accuracy. (default: None)'
  type: string
  inputBinding:
    prefix: --accuracy
- id: coverage
  doc: 'Filter reads by coverage (what fraction of the read aligns). (default: None)'
  type: string
  inputBinding:
    prefix: --coverage
- id: length
  doc: 'Filter reads by read length. (default: None)'
  type: long
  inputBinding:
    prefix: --length
- id: any_fail
  doc: 'Exit with an error if any region has insufficient coverage. (default: False)'
  type: boolean
  inputBinding:
    prefix: --any_fail
- id: all_fail
  doc: 'Exit with an error if all regions have insufficient coverage. (default: False)'
  type: boolean
  inputBinding:
    prefix: --all_fail
- id: patience
  doc: 'Maximum iterations with no change in median coverage before aborting. (default:
    5)'
  type: string
  inputBinding:
    prefix: --patience
- id: stride
  doc: 'Stride in genomic coordinates when searching for new reads. Smaller can lead
    to more compact pileup. (default: 1000)'
  type: string
  inputBinding:
    prefix: --stride
- id: proportional
  doc: 'Activate proportional sampling, thus keeping depth variations of the pileup.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --proportional
- id: seed
  doc: 'Random seed for proportional downsampling of reads. (default: None)'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- subsample_bam
