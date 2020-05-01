#!/usr/bin/env cwl-runner

baseCommand:
- validatevcf
class: CommandLineTool
cwlVersion: v1.0
id: validatevcf
inputs:
- doc: VCF file to validate.
  id: input_vcf
  inputBinding:
    prefix: --input-vcf
  type: string
- doc: '[ --output-errors ] arg    Output failure information in a bed file.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --reference ] arg        The reference fasta file.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --location ] arg         The location to start at.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --regions ] arg          Use a bed file for getting a subset of regions  (traversal
    via tabix).'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --targets ] arg          Use a bed file for getting a subset of targets  (streaming
    the whole file, ignoring things  outside the bed regions).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: Set to true to output progress information.
  id: progress
  inputBinding:
    prefix: --progress
  type: string
- doc: Output progress information every n seconds.
  id: progress_seconds
  inputBinding:
    prefix: --progress-seconds
  type: string
- doc: '[ --window ] arg           Overlap window to create haplotype blocks.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Number of bases to expand around each haplotype block.
  id: expand_hap_blocks
  inputBinding:
    prefix: --expand-hapblocks
  type: string
- doc: Maximum number of haplotype blocks to process.
  id: limit
  inputBinding:
    prefix: --limit
  type: string
- doc: Apply filtering in VCF (on by default).
  id: apply_filters
  inputBinding:
    prefix: --apply-filters
  type: string
