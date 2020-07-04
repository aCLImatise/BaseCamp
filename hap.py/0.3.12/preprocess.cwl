class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/preprocess.cwl
inputs:
- id: input_vcf
  doc: VCF files to preprocess (use file:sample for a specific sample column).
  type: string
  inputBinding:
    prefix: --input-vcf
- id: arg_output_variant
  doc: '[ --output-vcf ] arg          Output variant comparison results to VCF.'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_reference_fasta
  doc: '[ --reference ] arg           The reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_location_start
  doc: '[ --location ] arg            The location to start at.'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_use_regions
  doc: '[ --regions ] arg             Use a bed file for getting a subset of  regions
    (traversal via tabix).'
  type: boolean
  inputBinding:
    prefix: -R
- id: targets_streaming_file
  doc: '[ --targets ] arg             Use a bed file for getting a subset of  targets
    (streaming the whole file, ignoring  things outside the bed regions).'
  type: boolean
  inputBinding:
    prefix: -T
- id: progress
  doc: Set to true to output progress information.
  type: string
  inputBinding:
    prefix: --progress
- id: haploid_x
  doc: 'Expand GTs on chrX: turn 1 into 1/1'
  type: string
  inputBinding:
    prefix: --haploid-x
- id: progress_seconds
  doc: Output progress information every n seconds.
  type: string
  inputBinding:
    prefix: --progress-seconds
- id: limit
  doc: Maximum number of records to process.
  type: string
  inputBinding:
    prefix: --limit
- id: arg_apply_normalisations
  doc: '[ --preprocess-variants ] arg Apply variant normalisations, trimming,  realignment
    for complex variants (off by  default).'
  type: boolean
  inputBinding:
    prefix: -V
- id: arg_leftshift_indel
  doc: '[ --leftshift ] arg           Left-shift indel alleles (off by default).'
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- preprocess
