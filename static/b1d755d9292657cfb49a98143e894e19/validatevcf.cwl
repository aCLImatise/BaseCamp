class: CommandLineTool
id: validatevcf.cwl
inputs:
- id: input_vcf
  doc: VCF file to validate.
  type: string
  inputBinding:
    prefix: --input-vcf
- id: e
  doc: '[ --output-errors ] arg    Output failure information in a bed file.'
  type: boolean
  inputBinding:
    prefix: -e
- id: r
  doc: '[ --reference ] arg        The reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: '[ --location ] arg         The location to start at.'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: '[ --regions ] arg          Use a bed file for getting a subset of regions  (traversal
    via tabix).'
  type: boolean
  inputBinding:
    prefix: -R
- id: t
  doc: '[ --targets ] arg          Use a bed file for getting a subset of targets  (streaming
    the whole file, ignoring things  outside the bed regions).'
  type: boolean
  inputBinding:
    prefix: -T
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
- id: w
  doc: '[ --window ] arg           Overlap window to create haplotype blocks.'
  type: boolean
  inputBinding:
    prefix: -w
- id: n
  doc: '[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate.'
  type: boolean
  inputBinding:
    prefix: -n
- id: expand_hap_blocks
  doc: Number of bases to expand around each haplotype block.
  type: string
  inputBinding:
    prefix: --expand-hapblocks
- id: limit
  doc: Maximum number of haplotype blocks to process.
  type: string
  inputBinding:
    prefix: --limit
- id: apply_filters
  doc: Apply filtering in VCF (on by default).
  type: string
  inputBinding:
    prefix: --apply-filters
outputs: []
cwlVersion: v1.1
baseCommand:
- validatevcf
