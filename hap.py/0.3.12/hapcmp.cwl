#!/usr/bin/env cwl-runner

baseCommand:
- hapcmp
class: CommandLineTool
cwlVersion: v1.0
id: hapcmp
inputs:
- doc: The input bed file specifying haplotype block  regions (use - for stdin).
  id: input_regions
  inputBinding:
    prefix: --input-regions
  type: string
- doc: Two VCF files to compare (use file:sample for a specific sample column).
  id: input_v_cfs
  inputBinding:
    prefix: --input-vcfs
  type: string
- doc: '[ --output-bed ] arg       Output block results as bed files (default is  to
    output to stdout).'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --output-errors ] arg    Output failure information.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --output-diffs ] arg     Output shared and different variants to a mJSON
    file (one json record per line, default is to  not output diffs).'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --reference ] arg        The reference fasta file.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Set to true to output haplotype sequences.
  id: output_sequences
  inputBinding:
    prefix: --output-sequences
  type: string
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
- doc: '[ --limit ] arg            Maximum number of haplotype blocks to process.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --apply-filters ] arg    Apply filtering in VCF.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Perform alignments on mismatching haplotypes to find best approximate match.
  id: do_alignment
  inputBinding:
    prefix: --do-alignment
  type: string
