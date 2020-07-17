class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/xcmp.cwl
inputs:
- id: input_v_cfs
  doc: Two VCF files to compare (use file:sample  for a specific sample column).
  type: string
  inputBinding:
    prefix: --input-vcfs
- id: arg_output_variant
  doc: '[ --output-vcf ] arg          Output variant comparison results to VCF.'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_output_failure
  doc: '[ --output-errors ] arg       Output failure information.'
  type: boolean
  inputBinding:
    prefix: -e
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
- id: arg_field_use
  doc: '[ --qq ] arg                  Field to use for quality scoring (this will  be
    output as the QQ info field).'
  type: boolean
  inputBinding:
    prefix: -q
- id: progress
  doc: Set to true to output progress information.
  type: string
  inputBinding:
    prefix: --progress
- id: progress_seconds
  doc: Output progress information every n seconds.
  type: string
  inputBinding:
    prefix: --progress-seconds
- id: arg_overlap_window
  doc: '[ --window ] arg              Overlap window to create haplotype blocks.'
  type: boolean
  inputBinding:
    prefix: -w
- id: arg_maximum_number
  doc: '[ --max-n-haplotypes ] arg    Maximum number of haplotypes to enumerate.'
  type: boolean
  inputBinding:
    prefix: -n
- id: expand_hap_blocks
  doc: Number of bases to expand around each  haplotype block.
  type: string
  inputBinding:
    prefix: --expand-hapblocks
- id: limit
  doc: Maximum number of haplotype blocks to  process.
  type: string
  inputBinding:
    prefix: --limit
- id: apply_filters_truth
  doc: Apply filtering in truth VCF (on by  default).
  type: string
  inputBinding:
    prefix: --apply-filters-truth
- id: arg_apply_filtering
  doc: '[ --apply-filters-query ] arg Apply filtering in query VCF (off by  default).'
  type: boolean
  inputBinding:
    prefix: -f
- id: always_hap_cmp
  doc: Always compare haplotype blocks (even if  they match). Testing use only/slow.
  type: string
  inputBinding:
    prefix: --always-hapcmp
- id: no_hap_cmp
  doc: Disable haplotype comparison. This overrides all other haplotype comparison
    options.
  type: string
  inputBinding:
    prefix: --no-hapcmp
outputs: []
cwlVersion: v1.1
baseCommand:
- xcmp
