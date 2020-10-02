class: CommandLineTool
id: bgt_view.cwl
inputs:
- id: in_samples_list_samplesample
  doc: samples list (,sample1,sample2 or a file or expr; see Notes below) [all]
  type: File
  inputBinding:
    prefix: -s
- id: in_region
  doc: region [all]
  type: string
  inputBinding:
    prefix: -r
- id: in_extract_variants_overlapping
  doc: extract variants overlapping BED FILE []
  type: File
  inputBinding:
    prefix: -B
- id: in_exclude_variants_overlapping
  doc: exclude variants overlapping BED FILE (effective with -B)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_process_intth_record
  doc: process from the INT-th record (1-based) []
  type: long
  inputBinding:
    prefix: -i
- id: in_process_most_int
  doc: process at most INT records []
  type: long
  inputBinding:
    prefix: -n
- id: in_variant_annotations_work
  doc: variant annotations in FMF (to work with -a) []
  type: File
  inputBinding:
    prefix: -d
- id: in_load_variant_annotations
  doc: load variant annotations in RAM (only with -d)
  type: boolean
  inputBinding:
    prefix: -M
- id: in_alleles_list_chrbasedposreflenseq
  doc: alleles list chr:1basedPos:refLen:seq (,allele1,allele2 or a file or expr)
    []
  type: File
  inputBinding:
    prefix: -a
- id: in_frequency_filters
  doc: frequency filters []
  type: string
  inputBinding:
    prefix: -f
- id: in_bcf_output_effective
  doc: BCF output (effective without -S/-H)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_compression_level_bcf
  doc: compression level for BCF [default]
  type: long
  inputBinding:
    prefix: -l
- id: in_equivalent_bl_b
  doc: equivalent to -bl0 (overriding -b and -l)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_output_sample_genotypes
  doc: don't output sample genotypes
  type: boolean
  inputBinding:
    prefix: -G
- id: in_write_acan_applied
  doc: write AC/AN to the INFO field (auto applied with -f or multipl -s)
  type: boolean
  inputBinding:
    prefix: -C
- id: in_show_samples_set
  doc: show samples with a set of alleles (with -a)
  type: boolean
  inputBinding:
    prefix: -S
- id: in_count_haplotypes_set
  doc: count of haplotypes with a set of alleles (with -a)
  type: boolean
  inputBinding:
    prefix: -H
- id: in_commadelimited_list_output
  doc: "comma-delimited list of fields to output. Accepted variables:\nAC, AN, AC#,\
    \ AN#, CHROM, POS, END, REF, ALT (# for a group number)"
  type: long
  inputBinding:
    prefix: -t
- id: in_bgt_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bgt
- view
