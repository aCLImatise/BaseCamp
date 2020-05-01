#!/usr/bin/env cwl-runner

baseCommand:
- xcmp
class: CommandLineTool
cwlVersion: v1.0
id: xcmp
inputs:
- doc: Two VCF files to compare (use file:sample  for a specific sample column).
  id: input_v_cfs
  inputBinding:
    prefix: --input-vcfs
  type: string
- doc: '[ --output-vcf ] arg          Output variant comparison results to VCF.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --output-errors ] arg       Output failure information.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --reference ] arg           The reference fasta file.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --location ] arg            The location to start at.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --regions ] arg             Use a bed file for getting a subset of  regions
    (traversal via tabix).'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --targets ] arg             Use a bed file for getting a subset of  targets
    (streaming the whole file, ignoring  things outside the bed regions).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: '[ --qq ] arg                  Field to use for quality scoring (this will  be
    output as the QQ info field).'
  id: q
  inputBinding:
    prefix: -q
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
- doc: '[ --window ] arg              Overlap window to create haplotype blocks.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --max-n-haplotypes ] arg    Maximum number of haplotypes to enumerate.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Number of bases to expand around each  haplotype block.
  id: expand_hap_blocks
  inputBinding:
    prefix: --expand-hapblocks
  type: string
- doc: Maximum number of haplotype blocks to  process.
  id: limit
  inputBinding:
    prefix: --limit
  type: string
- doc: Apply filtering in truth VCF (on by  default).
  id: apply_filters_truth
  inputBinding:
    prefix: --apply-filters-truth
  type: string
- doc: '[ --apply-filters-query ] arg Apply filtering in query VCF (off by  default).'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Always compare haplotype blocks (even if  they match). Testing use only/slow.
  id: always_hap_cmp
  inputBinding:
    prefix: --always-hapcmp
  type: string
- doc: Disable haplotype comparison. This overrides all other haplotype comparison
    options.
  id: no_hap_cmp
  inputBinding:
    prefix: --no-hapcmp
  type: string
