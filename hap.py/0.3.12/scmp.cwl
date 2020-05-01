#!/usr/bin/env cwl-runner

baseCommand:
- scmp
class: CommandLineTool
cwlVersion: v1.0
id: scmp
inputs:
- doc: 'Input VCF file. Must have exactly two  samples, the first sample will be used  as
    truth, the second one as query. This can be obtained using bcftools:  bcftools
    merge truth.vcf.gz  query.vcf.gz --force-samples'
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '[ --output-file ] arg              The output file name (VCF / BCF /  VCF.gz).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --reference ] arg                The reference fasta file (needed only  for
    VCF output).'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --location ] arg                 Start location.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: QQ field name -- this can be QUAL, an  INFO or FORMAT field name
  id: qq_field
  inputBinding:
    prefix: --qq-field
  type: string
- doc: '[ --only ] arg                     Bed file of locations (equivalent to -R
    in bcftools)'
  id: o
  inputBinding:
    prefix: -O
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
- doc: '[ --apply-filters ] arg            Apply filtering in VCF.'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Number of threads to use.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Number of variants per block.
  id: block_size
  inputBinding:
    prefix: --blocksize
  type: string
- doc: Minimum distance between variants  allowed to end up in separate blocks
  id: min_var_distance
  inputBinding:
    prefix: --min-var-distance
  type: string
- doc: '[ --comparison-mode ] arg (=allele) How to compare variants: allele  (default)
    / distance / enumerate'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: (=50)          For distance comparison, this is the  maximum distance between
    variants s.t.  they get matched.
  id: distance_max_dist
  inputBinding:
    prefix: --distance-maxdist
  type: string
- doc: (=65536)      For haplotype enumeration comparison,  this is the number of
    possibilities to  enumerate before giving up
  id: enumerate_max_enum
  inputBinding:
    prefix: --enumerate-maxenum
  type: string
