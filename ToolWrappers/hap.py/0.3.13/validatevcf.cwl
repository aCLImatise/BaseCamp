class: CommandLineTool
id: validatevcf.cwl
inputs:
- id: in_input_vcf
  doc: VCF file to validate.
  type: File?
  inputBinding:
    prefix: --input-vcf
- id: in_arg_output_failure
  doc: '[ --output-errors ] arg    Output failure information in a bed file.'
  type: File?
  inputBinding:
    prefix: -e
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg        The reference fasta file.'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_location_start
  doc: '[ --location ] arg         The location to start at.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_use_regionstraversal
  doc: "[ --regions ] arg          Use a bed file for getting a subset of regions\n\
    (traversal via tabix)."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_targetsstreaming_whole_file
  doc: "[ --targets ] arg          Use a bed file for getting a subset of targets\n\
    (streaming the whole file, ignoring things\noutside the bed regions)."
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_progress
  doc: Set to true to output progress information.
  type: string?
  inputBinding:
    prefix: --progress
- id: in_progress_seconds
  doc: Output progress information every n seconds.
  type: string?
  inputBinding:
    prefix: --progress-seconds
- id: in_arg_overlap_window
  doc: '[ --window ] arg           Overlap window to create haplotype blocks.'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_maximum_number
  doc: '[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_expand_hap_blocks
  doc: Number of bases to expand around each haplotype
  type: long?
  inputBinding:
    prefix: --expand-hapblocks
- id: in_apply_filters
  doc: Apply filtering in VCF (on by default).
  type: string?
  inputBinding:
    prefix: --apply-filters
- id: in_block_dot
  doc: --limit arg                   Maximum number of haplotype blocks to process.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_failure
  doc: '[ --output-errors ] arg    Output failure information in a bed file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_failure)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hap.py:0.3.13--py27h5c5a3ab_0
cwlVersion: v1.1
baseCommand:
- validatevcf
