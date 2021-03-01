class: CommandLineTool
id: scmp.cwl
inputs:
- id: in_input_file
  doc: "Input VCF file. Must have exactly two\nsamples, the first sample will be used\n\
    as truth, the second one as query. This\ncan be obtained using bcftools:\nbcftools\
    \ merge truth.vcf.gz\nquery.vcf.gz --force-samples"
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_arg_output_file
  doc: "[ --output-file ] arg              The output file name (VCF / BCF /\nVCF.gz)."
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_reference_fasta
  doc: "[ --reference ] arg                The reference fasta file (needed only\n\
    for VCF output)."
  type: File?
  inputBinding:
    prefix: -r
- id: in_arg_start_location
  doc: '[ --location ] arg                 Start location.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_qq_field
  doc: "QQ field name -- this can be QUAL, an\nINFO or FORMAT field name"
  type: string?
  inputBinding:
    prefix: --qq-field
- id: in_arg_bed_file
  doc: "[ --only ] arg                     Bed file of locations (equivalent to -R\n\
    in bcftools)"
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_limit_records
  doc: Maximum umber of records to process
  type: string?
  inputBinding:
    prefix: --limit-records
- id: in_message_every
  doc: Print a message every N records.
  type: string?
  inputBinding:
    prefix: --message-every
- id: in_arg_apply_filtering
  doc: '[ --apply-filters ] arg            Apply filtering in VCF.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_threads
  doc: Number of threads to use.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_block_size
  doc: Number of variants per block.
  type: long?
  inputBinding:
    prefix: --blocksize
- id: in_min_var_distance
  doc: "Minimum distance between variants\nallowed to end up in separate blocks"
  type: long?
  inputBinding:
    prefix: --min-var-distance
- id: in_arg_allelehow_compare
  doc: "[ --comparison-mode ] arg (=allele)\nHow to compare variants: allele\n(default)\
    \ / distance / enumerate"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_distance_max_dist
  doc: "(=50)          For distance comparison, this is the\nmaximum distance between\
    \ variants s.t.\nthey get matched."
  type: long?
  inputBinding:
    prefix: --distance-maxdist
- id: in_enumerate_max_enum
  doc: "(=65536)      For haplotype enumeration comparison,\nthis is the number of\
    \ possibilities to\nenumerate before giving up\n"
  type: long?
  inputBinding:
    prefix: --enumerate-maxenum
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: "[ --output-file ] arg              The output file name (VCF / BCF /\nVCF.gz)."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
- id: out_arg_reference_fasta
  doc: "[ --reference ] arg                The reference fasta file (needed only\n\
    for VCF output)."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_reference_fasta)
hints: []
cwlVersion: v1.1
baseCommand:
- scmp
