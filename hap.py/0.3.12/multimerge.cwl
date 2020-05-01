#!/usr/bin/env cwl-runner

baseCommand:
- multimerge
class: CommandLineTool
cwlVersion: v1.0
id: multimerge
inputs:
- doc: The input files
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output-file ] arg   The output file name.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --reference ] arg     The reference fasta file.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --location ] arg      Start location.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --regions ] arg       Use a bed file for getting a subset of regions  (traversal
    via tabix).'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --targets ] arg       Use a bed file for getting a subset of targets  (streaming
    the whole file, ignoring things outside the bed regions).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: Maximum umber of records to process
  id: limit_records
  inputBinding:
    prefix: --limit-records
  type: string
- doc: Print a message every N records.
  id: message_every
  inputBinding:
    prefix: --message-every
  type: string
- doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Leftshift variant alleles.
  id: left_shift
  inputBinding:
    prefix: --leftshift
  type: string
- doc: Remove unused variant alleles.
  id: trim_alleles
  inputBinding:
    prefix: --trimalleles
  type: string
- doc: Split and sort variant alleles.
  id: split_alleles
  inputBinding:
    prefix: --splitalleles
  type: string
- doc: Merge calls at the same location.
  id: merge_by_location
  inputBinding:
    prefix: --merge-by-location
  type: string
- doc: Make alleles unique across a single line.
  id: unique_alleles
  inputBinding:
    prefix: --unique-alleles
  type: string
- doc: Split homref blocks into per-nucleotide blocks.
  id: hom_ref_split
  inputBinding:
    prefix: --homref-split
  type: string
- doc: Output split homref blocks as BCF/VCF.
  id: hom_ref_vcf_out
  inputBinding:
    prefix: --homref-vcf-out
  type: string
- doc: Remove homref blocks.
  id: calls_only
  inputBinding:
    prefix: --calls-only
  type: string
- doc: Split complex alleles into primitives via  realignment.
  id: primitives
  inputBinding:
    prefix: --primitives
  type: string
- doc: Enables splitalleles, trimalleles, unique-alleles, leftshift.
  id: process_split
  inputBinding:
    prefix: --process-split
  type: string
- doc: Enables splitalleles, trimalleles, unique-alleles, leftshift, mergebylocation.
  id: process_full
  inputBinding:
    prefix: --process-full
  type: string
- doc: Process GQ/DP/AD format fields.
  id: process_formats
  inputBinding:
    prefix: --process-formats
  type: string
