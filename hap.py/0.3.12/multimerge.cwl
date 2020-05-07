class: CommandLineTool
id: multimerge.cwl
inputs:
- id: input_file
  doc: The input files
  type: string
  inputBinding:
    prefix: --input-file
- id: o
  doc: '[ --output-file ] arg   The output file name.'
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: '[ --reference ] arg     The reference fasta file.'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: '[ --location ] arg      Start location.'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: '[ --regions ] arg       Use a bed file for getting a subset of regions  (traversal
    via tabix).'
  type: boolean
  inputBinding:
    prefix: -R
- id: t
  doc: '[ --targets ] arg       Use a bed file for getting a subset of targets  (streaming
    the whole file, ignoring things outside the bed regions).'
  type: boolean
  inputBinding:
    prefix: -T
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
  doc: '[ --apply-filters ] arg Apply filtering in VCF.'
  type: boolean
  inputBinding:
    prefix: -f
- id: left_shift
  doc: Leftshift variant alleles.
  type: string
  inputBinding:
    prefix: --leftshift
- id: trim_alleles
  doc: Remove unused variant alleles.
  type: string
  inputBinding:
    prefix: --trimalleles
- id: split_alleles
  doc: Split and sort variant alleles.
  type: string
  inputBinding:
    prefix: --splitalleles
- id: merge_by_location
  doc: Merge calls at the same location.
  type: string
  inputBinding:
    prefix: --merge-by-location
- id: unique_alleles
  doc: Make alleles unique across a single line.
  type: string
  inputBinding:
    prefix: --unique-alleles
- id: hom_ref_split
  doc: Split homref blocks into per-nucleotide blocks.
  type: string
  inputBinding:
    prefix: --homref-split
- id: hom_ref_vcf_out
  doc: Output split homref blocks as BCF/VCF.
  type: string
  inputBinding:
    prefix: --homref-vcf-out
- id: calls_only
  doc: Remove homref blocks.
  type: string
  inputBinding:
    prefix: --calls-only
- id: primitives
  doc: Split complex alleles into primitives via  realignment.
  type: string
  inputBinding:
    prefix: --primitives
- id: process_split
  doc: Enables splitalleles, trimalleles, unique-alleles, leftshift.
  type: string
  inputBinding:
    prefix: --process-split
- id: process_full
  doc: Enables splitalleles, trimalleles, unique-alleles, leftshift, mergebylocation.
  type: string
  inputBinding:
    prefix: --process-full
- id: process_formats
  doc: Process GQ/DP/AD format fields.
  type: string
  inputBinding:
    prefix: --process-formats
outputs: []
cwlVersion: v1.1
baseCommand:
- multimerge
