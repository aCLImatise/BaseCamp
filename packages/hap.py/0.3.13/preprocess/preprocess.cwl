class: CommandLineTool
id: preprocess.cwl
inputs:
- id: in_input_vcf
  doc: "VCF files to preprocess (use file:sample for\na specific sample column)."
  type: File?
  inputBinding:
    prefix: --input-vcf
- id: in_arg_output_variant
  doc: '[ --output-vcf ] arg          Output variant comparison results to VCF.'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg           The reference fasta file.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_location_start
  doc: '[ --location ] arg            The location to start at.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_subset_ofregions
  doc: "[ --regions ] arg             Use a bed file for getting a subset of\nregions\
    \ (traversal via tabix)."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_subset_oftargets_streaming
  doc: "[ --targets ] arg             Use a bed file for getting a subset of\ntargets\
    \ (streaming the whole file, ignoring\nthings outside the bed regions)."
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_progress
  doc: Set to true to output progress information.
  type: string?
  inputBinding:
    prefix: --progress
- id: in_haploid_x
  doc: 'Expand GTs on chrX: turn 1 into 1/1'
  type: long?
  inputBinding:
    prefix: --haploid-x
- id: in_progress_seconds
  doc: Output progress information every n seconds.
  type: string?
  inputBinding:
    prefix: --progress-seconds
- id: in_limit
  doc: Maximum number of records to process.
  type: long?
  inputBinding:
    prefix: --limit
- id: in_arg_apply_normalisations
  doc: "[ --preprocess-variants ] arg Apply variant normalisations, trimming,\nrealignment\
    \ for complex variants (off by\ndefault)."
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_arg_leftshift_indel
  doc: '[ --leftshift ] arg           Left-shift indel alleles (off by default).'
  type: boolean?
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- preprocess
