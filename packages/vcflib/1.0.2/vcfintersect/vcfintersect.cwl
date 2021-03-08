class: CommandLineTool
id: vcfintersect.cwl
inputs:
- id: in_bed
  doc: use intervals provided by this BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_region
  doc: use 1-based tabix-style region (e.g. chrZ:10-20), multiples allowed
  type: long?
  inputBinding:
    prefix: --region
- id: in_start_only
  doc: "don't use the reference length information in the record to determine\noverlap\
    \ status, just use the start posiion"
  type: boolean?
  inputBinding:
    prefix: --start-only
- id: in_invert
  doc: "invert the selection, printing only records which would\nnot have been printed\
    \ out"
  type: boolean?
  inputBinding:
    prefix: --invert
- id: in_intersect_vcf
  doc: use this VCF for set intersection generation
  type: File?
  inputBinding:
    prefix: --intersect-vcf
- id: in_union_vcf
  doc: use this VCF for set union generation
  type: File?
  inputBinding:
    prefix: --union-vcf
- id: in_window_size
  doc: compare records up to this many bp away (default 30)
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_reference
  doc: FASTA reference file, required with -i and -u
  type: File?
  inputBinding:
    prefix: --reference
- id: in_loci
  doc: output whole loci when one alternate allele matches
  type: boolean?
  inputBinding:
    prefix: --loci
- id: in_ref_match
  doc: intersect on the basis of record REF string
  type: boolean?
  inputBinding:
    prefix: --ref-match
- id: in_tag
  doc: attach TAG to each record's info field if it would intersect
  type: string?
  inputBinding:
    prefix: --tag
- id: in_tag_value
  doc: "use this value to indicate that the allele is passing\n'.' will be used otherwise.\
    \  default: 'PASS'"
  type: string?
  inputBinding:
    prefix: --tag-value
- id: in_merge_from
  doc: "TO-TAG   merge from FROM-TAG used in the -i file, setting TO-TAG\nin the current\
    \ file."
  type: File?
  inputBinding:
    prefix: --merge-from
- id: in_vcf_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcfintersect
