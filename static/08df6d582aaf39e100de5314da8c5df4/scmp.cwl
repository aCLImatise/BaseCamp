class: CommandLineTool
id: scmp.cwl
inputs:
- id: input_file
  doc: 'Input VCF file. Must have exactly two  samples, the first sample will be used  as
    truth, the second one as query. This can be obtained using bcftools:  bcftools
    merge truth.vcf.gz  query.vcf.gz --force-samples'
  type: string
  inputBinding:
    prefix: --input-file
- id: o
  doc: '[ --output-file ] arg              The output file name (VCF / BCF /  VCF.gz).'
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: '[ --reference ] arg                The reference fasta file (needed only  for
    VCF output).'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: '[ --location ] arg                 Start location.'
  type: boolean
  inputBinding:
    prefix: -l
- id: qq_field
  doc: QQ field name -- this can be QUAL, an  INFO or FORMAT field name
  type: string
  inputBinding:
    prefix: --qq-field
- id: o
  doc: '[ --only ] arg                     Bed file of locations (equivalent to -R
    in bcftools)'
  type: boolean
  inputBinding:
    prefix: -O
- id: limit_records
  doc: Maximum umber of records to process
  type: string
  inputBinding:
    prefix: --limit-records
- id: message_every
  doc: Print a message every N records.
  type: string
  inputBinding:
    prefix: --message-every
- id: f
  doc: '[ --apply-filters ] arg            Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: threads
  doc: Number of threads to use.
  type: string
  inputBinding:
    prefix: --threads
- id: block_size
  doc: Number of variants per block.
  type: string
  inputBinding:
    prefix: --blocksize
- id: min_var_distance
  doc: Minimum distance between variants  allowed to end up in separate blocks
  type: string
  inputBinding:
    prefix: --min-var-distance
- id: m
  doc: '[ --comparison-mode ] arg (=allele) How to compare variants: allele  (default)
    / distance / enumerate'
  type: boolean
  inputBinding:
    prefix: -M
- id: distance_max_dist
  doc: (=50)          For distance comparison, this is the  maximum distance between
    variants s.t.  they get matched.
  type: string
  inputBinding:
    prefix: --distance-maxdist
- id: enumerate_max_enum
  doc: (=65536)      For haplotype enumeration comparison,  this is the number of
    possibilities to  enumerate before giving up
  type: string
  inputBinding:
    prefix: --enumerate-maxenum
outputs: []
cwlVersion: v1.1
baseCommand:
- scmp
