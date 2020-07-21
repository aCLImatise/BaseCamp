class: CommandLineTool
id: ../../../bgt_view.cwl
inputs:
- id: samples_list_samplesample
  doc: samples list (,sample1,sample2 or a file or expr; see Notes below) [all]
  type: string
  inputBinding:
    prefix: -s
- id: region
  doc: region [all]
  type: string
  inputBinding:
    prefix: -r
- id: extract_variants_overlapping
  doc: extract variants overlapping BED FILE []
  type: File
  inputBinding:
    prefix: -B
- id: exclude_variants_overlapping
  doc: exclude variants overlapping BED FILE (effective with -B)
  type: boolean
  inputBinding:
    prefix: -e
- id: process_intth_record
  doc: process from the INT-th record (1-based) []
  type: long
  inputBinding:
    prefix: -i
- id: process_most_records
  doc: process at most INT records []
  type: long
  inputBinding:
    prefix: -n
- id: variant_annotations_work
  doc: variant annotations in FMF (to work with -a) []
  type: File
  inputBinding:
    prefix: -d
- id: load_variant_annotations
  doc: load variant annotations in RAM (only with -d)
  type: boolean
  inputBinding:
    prefix: -M
- id: alleles_list_chrbasedposreflenseq
  doc: alleles list chr:1basedPos:refLen:seq (,allele1,allele2 or a file or expr)
    []
  type: string
  inputBinding:
    prefix: -a
- id: frequency_filters
  doc: frequency filters []
  type: string
  inputBinding:
    prefix: -f
- id: bcf_output_effective
  doc: BCF output (effective without -S/-H)
  type: boolean
  inputBinding:
    prefix: -b
- id: compression_level_bcf
  doc: compression level for BCF [default]
  type: long
  inputBinding:
    prefix: -l
- id: equivalent_bl_b
  doc: equivalent to -bl0 (overriding -b and -l)
  type: boolean
  inputBinding:
    prefix: -u
- id: output_sample_genotypes
  doc: don't output sample genotypes
  type: boolean
  inputBinding:
    prefix: -G
- id: write_acan_info
  doc: write AC/AN to the INFO field (auto applied with -f or multipl -s)
  type: boolean
  inputBinding:
    prefix: -C
- id: show_samples_set
  doc: show samples with a set of alleles (with -a)
  type: boolean
  inputBinding:
    prefix: -S
- id: count_haplotypes_set
  doc: count of haplotypes with a set of alleles (with -a)
  type: boolean
  inputBinding:
    prefix: -H
- id: commadelimited_list_ac
  doc: 'comma-delimited list of fields to output. Accepted variables: AC, AN, AC#,
    AN#, CHROM, POS, END, REF, ALT (# for a group number)'
  type: string
  inputBinding:
    prefix: -t
- id: bgt_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- view
